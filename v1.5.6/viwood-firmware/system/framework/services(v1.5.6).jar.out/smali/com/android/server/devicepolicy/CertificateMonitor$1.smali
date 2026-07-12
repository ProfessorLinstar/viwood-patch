.class public Lcom/android/server/devicepolicy/CertificateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "CertificateMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/CertificateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 134
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 135
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->-$$Nest$mupdateInstalledCertificates(Lcom/android/server/devicepolicy/CertificateMonitor;Landroid/os/UserHandle;)V

    return-void
.end method
