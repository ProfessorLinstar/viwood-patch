.class Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# static fields
.field static final SERVICE_PROTOCOL:Ljava/lang/String; = "adb-tls-pairing"


# instance fields
.field public mGuid:Ljava/lang/String;

.field public mNsdManager:Landroid/net/nsd/NsdManager;

.field public mPairingCode:Ljava/lang/String;

.field public mPort:I

.field private mPublicKey:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public final mServiceType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 231
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 232
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 224
    const-string v0, "adb-tls-pairing"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_%s._tcp."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceType:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPairingCode:Ljava/lang/String;

    .line 234
    const-string/jumbo p2, "persist.adb.wifi.guid"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 236
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 237
    :cond_0
    iget-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    :cond_1
    const/4 p2, -0x1

    .line 239
    iput p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 240
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "servicediscovery"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/nsd/NsdManager;

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    return-void
.end method

.method private native native_pairing_cancel()V
.end method

.method private native native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_pairing_wait()Z
.end method


# virtual methods
.method public cancelPairing()V
    .locals 0

    .line 298
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_cancel()V

    return-void
.end method

.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 3

    .line 308
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register pairing service(err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->cancelPairing()V

    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 2

    .line 303
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registered pairing service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 2

    .line 315
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistered pairing service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 2

    .line 320
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unregister pairing service(err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .locals 4

    .line 246
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 249
    iget v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 250
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    iget v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v1, v1, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_wait()Z

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 260
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pairing succeeded key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pairing failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v1, p0}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 267
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string/jumbo v2, "publicKey"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 272
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "adbwifi guid was not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPairingCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    if-gtz v0, :cond_1

    .line 290
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to start pairing server"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_1
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
