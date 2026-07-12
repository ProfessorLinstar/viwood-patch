.class public final Lcom/android/server/vibrator/VibratorControllerHolder;
.super Ljava/lang/Object;
.source "VibratorControllerHolder.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mVibratorController:Landroid/frameworks/vibrator/IVibratorController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 66
    const-string p0, "VibratorControllerHolder"

    const-string v0, "binderDied() called unexpectedly."

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    :cond_0
    return-void
.end method

.method public getVibratorController()Landroid/frameworks/vibrator/IVibratorController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    return-object p0
.end method

.method public setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V
    .locals 2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-eqz p1, :cond_1

    .line 49
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 52
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set IVibratorController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibratorControllerHolder"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
