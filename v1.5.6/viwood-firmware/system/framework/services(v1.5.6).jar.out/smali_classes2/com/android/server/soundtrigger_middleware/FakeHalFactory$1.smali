.class public Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;
.super Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.source "FakeHalFactory.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

.field public final synthetic val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# direct methods
.method public static synthetic $r8$lambda$7_iW8BR7Y76K69HAMs1qEYCjPpQ(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->lambda$detach$0(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XiGXQfklz4wkG4zCK1MCdXt5aQk(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->lambda$clientAttached$1(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hfjQvh69nqGrUyLzy0LXz8onvuU(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->lambda$clientDetached$2(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;Landroid/os/IBinder;Ljava/lang/Runnable;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    invoke-direct {p0, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clientAttached(Landroid/os/IBinder;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clientDetached(Landroid/os/IBinder;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detach()V
    .locals 3

    .line 63
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$clientAttached$1(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->-$$Nest$fgetmInjection(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 78
    :catch_0
    const-string p0, "FakeHalFactory"

    const-string p1, "Unexpected RemoteException from same process"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$clientDetached$2(Landroid/os/IBinder;)V
    .locals 0

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->-$$Nest$fgetmInjection(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientDetached(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
    :catch_0
    const-string p0, "FakeHalFactory"

    const-string p1, "Unexpected RemoteException from same process"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$detach$0(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 0

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->-$$Nest$fgetmInjection(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 67
    :catch_0
    const-string p0, "FakeHalFactory"

    const-string p1, "Unexpected RemoteException from same process"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
