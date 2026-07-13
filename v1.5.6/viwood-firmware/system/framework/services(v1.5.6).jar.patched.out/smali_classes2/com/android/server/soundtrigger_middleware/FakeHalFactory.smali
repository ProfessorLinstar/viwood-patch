.class public Lcom/android/server/soundtrigger_middleware/FakeHalFactory;
.super Ljava/lang/Object;
.source "FakeHalFactory.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/HalFactory;


# instance fields
.field public final mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;


# direct methods
.method public static synthetic $r8$lambda$X-Xdaoaiej_7Pde1ToOSh5jHJj8(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 1

    .line 55
    :try_start_0
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->triggerRestart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 58
    :catch_0
    const-string p0, "FakeHalFactory"

    const-string v0, "Unexpected RemoteException from same process"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInjection(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    return-object p0
.end method

.method public constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    return-void
.end method


# virtual methods
.method public create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .locals 4

    .line 49
    new-instance v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    .line 50
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getGlobalEventInjection()Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v1

    .line 52
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;-><init>(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;Landroid/os/IBinder;Ljava/lang/Runnable;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-object v2
.end method
