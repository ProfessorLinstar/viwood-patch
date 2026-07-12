.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;
.super Ljava/lang/Object;
.source "SoundTriggerHalWatchdog.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mException:Ljava/lang/Exception;

.field public final mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;


# direct methods
.method public static synthetic $r8$lambda$mMwEu2Uln443_35_--eYfPlSriU(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V
    .locals 3

    .line 173
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mException:Ljava/lang/Exception;

    .line 174
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->-$$Nest$fgetmTimer(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->createTask(Ljava/lang/Runnable;J)Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;->cancel()V

    return-void
.end method

.method public final synthetic lambda$new$0()V
    .locals 3

    .line 175
    const-string v0, "HAL deadline expired. Rebooting."

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mException:Ljava/lang/Exception;

    const-string v2, "SoundTriggerHalWatchdog"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->reboot()V

    return-void
.end method
