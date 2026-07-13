.class public Lcom/android/server/location/gnss/GnssLocationProvider$1;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$2-H6ZQuWNTPstOo-QkS4tf6KazI(Lcom/android/server/location/gnss/GnssLocationProvider$1;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$1;->lambda$onEmergencyCallEnd$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$QYNinWcFs0QTrBihkIxRs3buc-4(Lcom/android/server/location/gnss/GnssLocationProvider$1;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$1;->lambda$onEmergencyCallStart$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onEmergencyCallEnd$1()V
    .locals 2

    .line 482
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmGnssConfiguration(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    .line 484
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 482
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(ZI)V

    return-void
.end method

.method public final synthetic lambda$onEmergencyCallStart$0(I)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmGnssConfiguration(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmNIHandler(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-result-object p0

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result p0

    .line 473
    invoke-virtual {v0, p0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(ZI)V

    return-void
.end method

.method public onEmergencyCallEnd()V
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmGnssConfiguration(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->isActiveSimEmergencySuplEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmHandler(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmGnssConfiguration(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object p0

    .line 485
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 482
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEmergencyCallStart(I)V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmGnssConfiguration(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->isActiveSimEmergencySuplEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmHandler(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
