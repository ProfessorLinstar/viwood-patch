.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/location/LocationResult;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;->f$0:Landroid/location/LocationResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;->f$0:Landroid/location/LocationResult;

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->$r8$lambda$QbT6HkC_u4chZ7xyPcSWev6OqR0(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method
