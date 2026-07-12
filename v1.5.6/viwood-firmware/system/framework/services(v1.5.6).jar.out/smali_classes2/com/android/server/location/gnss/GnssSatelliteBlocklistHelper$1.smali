.class public Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;
.super Landroid/database/ContentObserver;
.source "GnssSatelliteBlocklistHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;Landroid/os/Handler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;->this$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;->this$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->updateSatelliteBlocklist()V

    return-void
.end method
