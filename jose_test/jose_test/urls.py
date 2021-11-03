from django.contrib import admin
from django.urls import include, path, re_path as path
from django.contrib.auth.views import logout_then_login, LoginView, PasswordResetView, PasswordResetDoneView, PasswordResetConfirmView, PasswordResetCompleteView
from django.urls import reverse_lazy


urlpatterns = [
    path('admin/', admin.site.urls),
    path('store/',include(('apps.stores.urls','store'), namespace='store')),
    path('products/',include(('apps.products.urls','products'), namespace='products')),
    path('user/',include(('apps.user.urls','user'), namespace='user')),
    path('accounts/login/', LoginView.as_view(template_name='index.html',success_url=reverse_lazy('store_listar')), name='login'),
    path('logout/', logout_then_login, name='logout'),
    path('reset/password_reset', PasswordResetView.as_view(template_name='registration/password_reset_form.html'),
         {'email_template_name':'registration/password_reset_email.html'}, name="password_reset"),
    path('reset/password_reset_done',
         PasswordResetDoneView.as_view(template_name='registration/password_reset_done.html'),
         name="password_reset_done"),
    path('reset/<uidb64>/<token>/',
         PasswordResetConfirmView.as_view(template_name='registration/password_reset_confirm.html'),
         name="password_reset_confirm"),
    path('reset/done', PasswordResetCompleteView.as_view(template_name='registration/password_reset_complete.html'),
         name="password_reset_complete"),
]
