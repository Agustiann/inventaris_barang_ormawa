from django.shortcuts import render, get_object_or_404, redirect
from .models import Barang, Ormawa, Transaksi, RequestPeminjaman, User
from .forms import PeminjamanForm, RequestForm
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.utils import timezone
from django.contrib.auth.decorators import login_required
from datetime import datetime


@receiver(post_save, sender=Transaksi)
def update_jml_stok(sender, instance, created, **kwargs):
    if instance.status == 'setuju':
        pesanan = instance.id_request
        barang = pesanan.barang
        barang.jml_stok -= pesanan.jumlah
        barang.save()

@receiver(post_save, sender=RequestPeminjaman)
def update_jml_stok_kembali(sender, instance, created, **kwargs):
    # print('tanggal kiri', timezone.now(), 'tanggal kanan', datetime.strptime(instance.tgl_kembali, '%Y-%m-%d'))
    print('tanggal kiri', timezone.now(), 'tanggal kanan', instance.tgl_kembali)
    
    if timezone.now() >= instance.tgl_kembali:
        barang = instance.barang
        barang.jml_stok = int(barang.jml_stok) + int(instance.jumlah)
        barang.save()

# memastikan untuk melewati proses login dahulu
@login_required
def index(request):
    # mengambil data tabel barang dan disimpan di variable brg
    brg = Barang.barang_listed.all()
    # mengambil data tabel ormawa dan disimpan di variable ormawa
    ormawa = Ormawa.organisasi.all()
    # mengambil data tabel RequestPeminjaman dan disimpan di variable peminjaman
    peminjaman = RequestPeminjaman.objects.all()
    # mengambil data tabel Transaksi dan disimpan di variable transaksi
    transaksi = Transaksi.transaksi.all()
    # mengembalikan nilai data dari tabel barang, ormawa, request peminjaman dan transaksi ke halaman index.html
    print(request.user.id)
    barang_pinjam = Ormawa.objects.filter(user_id= request.user.id).values('id_ormawa')

    # id_ormawa = None
    for a in barang_pinjam:
        id_ormawa = a['id_ormawa']

    print('barang', barang_pinjam)
    print('id_ormawa', id_ormawa)

    peminjaman_user = RequestPeminjaman.objects.filter(ormawa_id= id_ormawa)
    # print(peminjaman_user.cleaned_data['barang_id'])

    return render(request, 'index.html', {'Barang': brg, 'Ormawa': ormawa, 'RequestPeminjaman': peminjaman_user, 'Transaksi': transaksi })

@login_required
def peminjaman(request):
    if request.method == 'POST':
        form = PeminjamanForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('inventory:index')
    else:
        for a in Ormawa.objects.filter(user_id= request.user.id).values('id_ormawa'):
            id_ormawa = a['id_ormawa']

        initial_data = {'ormawa': id_ormawa}
        form = PeminjamanForm(initial=initial_data)

    return render(request, 'peminjaman_barang.html', {'form': form})


def update_request(request, request_id):
    peminjaman = get_object_or_404(RequestPeminjaman, id=request_id)

    if request.method == 'POST':
        # Ambil data yang diupdate dari form
        form = RequestForm(request.POST, instance=peminjaman)
        if form.is_valid():
            form.save()
            return redirect('inventory:index')
    else:
        form = RequestForm(instance=peminjaman)

    context = {
        'form': form,
        'peminjaman': peminjaman
    }

    return render(request, 'update_request.html', context)


def delete_request(request, request_id):
    peminjaman = get_object_or_404(RequestPeminjaman, id=request_id)
    print(peminjaman)

    for a in Ormawa.objects.filter(user_id= request.user.id).values('id_ormawa'):
            id_ormawa = a['id_ormawa']

    if peminjaman.ormawa_id == id_ormawa:
        peminjaman.delete()
    return redirect('inventory:index')

def kembali_barang(request):
    if request.method == 'POST':
        request_id = request.POST['request_id']
        request_obj = RequestPeminjaman.objects.get(pk=request_id)
        pesanan = get_object_or_404(RequestPeminjaman, pk=request_id)
        print("Pesanan:", pesanan)
        if timezone.now() >= pesanan.tgl_kembali:
            barang = pesanan.barang
            barang.jml_stok += pesanan.jumlah
            barang.save()
        return redirect('inventory:index')
    return redirect('inventory:index')