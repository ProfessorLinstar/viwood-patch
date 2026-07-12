.class public Lcom/android/server/location/provider/LocationProviderManager$2;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/injector/PackageResetHelper$Responder;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    .line 1520
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$2;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isResetableForPackage(Ljava/lang/String;)Z
    .locals 0

    .line 1528
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$2;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$misResetableForPackage(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onPackageReset(Ljava/lang/String;)V
    .locals 0

    .line 1523
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$2;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$monPackageReset(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)V

    return-void
.end method
