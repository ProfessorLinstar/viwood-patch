.class public Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;
.super Ljava/lang/Object;
.source "FakeSoundTriggerHal.java"


# instance fields
.field public final mCallback:Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;


# direct methods
.method public static synthetic $r8$lambda$T_PSu1xehZK73SX8hijnV85RhCk(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->lambda$wrap$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->wrap(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->mCallback:Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$wrap$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 1

    .line 677
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->mCallback:Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    invoke-interface {p1, p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 679
    const-string p1, "FakeSoundTriggerHal"

    const-string v0, "Callback dispatch threw"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final wrap(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 2

    .line 675
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
