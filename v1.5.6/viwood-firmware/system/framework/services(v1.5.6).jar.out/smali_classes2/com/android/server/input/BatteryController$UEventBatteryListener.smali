.class abstract Lcom/android/server/input/BatteryController$UEventBatteryListener;
.super Lcom/android/server/input/UEventManager$UEventListener;
.source "BatteryController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 903
    invoke-direct {p0}, Lcom/android/server/input/UEventManager$UEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBatteryUEvent(J)V
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    .line 906
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 907
    invoke-static {}, Lcom/android/server/input/BatteryController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 908
    invoke-static {}, Lcom/android/server/input/BatteryController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UEventListener: Received UEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " eventTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_0
    const-string v2, "ACTION"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SUBSYSTEM"

    .line 913
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "POWER_SUPPLY"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/BatteryController$UEventBatteryListener;->onBatteryUEvent(J)V

    :cond_2
    :goto_0
    return-void
.end method
