.class public abstract Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;
.super Ljava/lang/Object;
.source "MagnificationFeatureFlagBase.java"


# direct methods
.method public static synthetic $r8$lambda$-Kf-nTTxGJWSQrXs1QThaOrkPek(Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$HMEPfKgq-evSmpLkWWXih2P9xnY(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$isFeatureFlagEnabled$2(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HjoLv6m51NE5GZx1H-Rvwx2RpYI(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/lang/Runnable;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$addOnChangedListener$5(Ljava/lang/Runnable;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KXsRNBwfYHScpt3V4aI4KVvs4mk(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$isFeatureFlagEnabled$1(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SunZ8DA06iWlbLRF5iW9b60qXOw()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$axYtYuWd7ezeyobLYU1aL4M31Ak(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$addOnChangedListener$6(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cGjSvEbTaEmwYD5v5crtvv-LJek(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$setFeatureFlagEnabled$4(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uU7CT_E1cwLbLd_9IPzRi_aj5kU(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$setFeatureFlagEnabled$3(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .locals 1

    .line 90
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/lang/Runnable;)V

    .line 98
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->clearCallingIdentifyAndTryCatch(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final clearCallingIdentifyAndTryCatch(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    :try_start_0
    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda7;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 44
    :catchall_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public abstract getDefaultValue()Z
.end method

.method public abstract getFeatureName()Ljava/lang/String;
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public isFeatureFlagEnabled()Z
    .locals 3

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getDefaultValue()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 52
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->clearCallingIdentifyAndTryCatch(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$addOnChangedListener$5(Ljava/lang/Runnable;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 92
    invoke-virtual {p2}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p2

    .line 93
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getFeatureName()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$addOnChangedListener$6(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public final synthetic lambda$isFeatureFlagEnabled$1(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getDefaultValue()Z

    move-result p0

    .line 53
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final synthetic lambda$isFeatureFlagEnabled$2(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getDefaultValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final synthetic lambda$setFeatureFlagEnabled$3(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getFeatureName()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, p0, p2, v1}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final synthetic lambda$setFeatureFlagEnabled$4(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getDefaultValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setFeatureFlagEnabled(Z)Z
    .locals 2

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getDefaultValue()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->clearCallingIdentifyAndTryCatch(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
