.class public Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;
.super Ljava/lang/Object;
.source "FakeSoundTriggerHal.java"


# instance fields
.field public final mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;


# direct methods
.method public static synthetic $r8$lambda$pnpqzoQdTdzjstzdqhpQnNpOVVU(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->lambda$wrap$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->wrap(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$wrap$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 1

    .line 717
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-interface {p1, p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 721
    const-string p1, "FakeSoundTriggerHal"

    const-string v0, "Callback dispatch threw"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final wrap(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 2

    .line 715
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
