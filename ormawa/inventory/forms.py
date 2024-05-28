from django import forms
from .models import RequestPeminjaman

class PeminjamanForm(forms.ModelForm):
    # ormawa = forms.CharField(max_length=50)
    # barang = forms.CharField(max_length=50)
    # jumlah = forms.IntegerField()
    # tgl_pinjam = forms.DateTimeField()
    # tgl_kembali = forms.DateTimeField()

    class Meta:
        model = RequestPeminjaman
        fields = "__all__"
        widgets = {
            'tgl_pinjam': forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'date'}),
            'tgl_kembali': forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'date'}),
            'ormawa': forms.Select(attrs={'class': 'form-select'}),
            'barang': forms.Select(attrs={'class': 'form-select'}),
            'jumlah': forms.NumberInput(attrs={'class': 'form-control'}),
        }


class RequestForm(forms.ModelForm):
    class Meta:
        model = RequestPeminjaman
        fields = "__all__"
        widgets = {
            'tgl_kembali': forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'date'}),
            'jumlah': forms.NumberInput(attrs={'class': 'form-control'}),
        }