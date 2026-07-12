.class public Lcom/android/server/am/BatteryStatsService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BatteryStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x15

    .line 343
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    const-string p1, "CONNECTED"

    goto :goto_0

    :cond_0
    const-string p1, "SUSPENDED"

    .line 345
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 346
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p2

    .line 345
    invoke-static {p2}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 351
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 p1, -0x1

    const-string v0, "DISCONNECTED"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    return-void
.end method
