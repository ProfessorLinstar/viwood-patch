.class public Lcom/android/server/broadcastradio/hal2/RadioModule$3;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "RadioModule.java"


# instance fields
.field public final synthetic val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .locals 0

    .line 431
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/ICloseHandle;

    invoke-interface {v0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 436
    const-string v1, "BcRadio2Srv.module"

    const-string v2, "Failed closing announcement listener"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    :goto_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    return-void
.end method
