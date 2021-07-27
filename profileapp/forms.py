from django.forms import ModelForm

from profileapp.models import Profile


class ProfileCreationForm(ModelForm):
    class Meta:
        # 메타 정보는 이미지에 있어서 다른 데이터를 의미
        # 외부 정보 이미지의 생성시기 같은
        model = Profile
        fields = ['image', 'nickname', 'message']