.class public Lcom/android/server/power/WirelessChargerDetector$2;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WirelessChargerDetector;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-static {v0}, Lcom/android/server/power/WirelessChargerDetector;->-$$Nest$fgetmLock(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-static {p0}, Lcom/android/server/power/WirelessChargerDetector;->-$$Nest$mfinishDetectionLocked(Lcom/android/server/power/WirelessChargerDetector;)V

    .line 387
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
