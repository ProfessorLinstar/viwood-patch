.class public Lcom/android/server/credentials/CredentialManagerUi$1;
.super Landroid/os/ResultReceiver;
.source "CredentialManagerUi.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/CredentialManagerUi;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/CredentialManagerUi;Landroid/os/Handler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi$1;->this$0:Lcom/android/server/credentials/CredentialManagerUi;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi$1;->this$0:Lcom/android/server/credentials/CredentialManagerUi;

    invoke-static {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerUi;->-$$Nest$mhandleUiResult(Lcom/android/server/credentials/CredentialManagerUi;ILandroid/os/Bundle;)V

    return-void
.end method
