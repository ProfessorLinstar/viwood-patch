.class public Lcom/android/server/location/provider/LocationProviderManager$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    .line 1494
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPermissionsChanged(I)V
    .locals 0

    .line 1502
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;I)V

    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 0

    .line 1497
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)V

    return-void
.end method
