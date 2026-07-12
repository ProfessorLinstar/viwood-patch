.class public Lcom/android/server/location/provider/LocationProviderManager$LastLocation;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"


# instance fields
.field public mCoarseBypassLocation:Landroid/location/Location;

.field public mCoarseLocation:Landroid/location/Location;

.field public mFineBypassLocation:Landroid/location/Location;

.field public mFineLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    .line 3016
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    sub-long/2addr v0, v2

    .line 3017
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    return-object p2

    :cond_1
    return-object p1
.end method

.method public final calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    .line 3003
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    return-object p2

    :cond_1
    return-object p1
.end method

.method public clearLocations()V
    .locals 1

    const/4 v0, 0x0

    .line 2962
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 2963
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    return-void
.end method

.method public clearMock()V
    .locals 2

    .line 2947
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2948
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 2950
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2951
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 2953
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2954
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 2956
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2957
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    :cond_3
    return-void
.end method

.method public get(IZ)Landroid/location/Location;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 2971
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    return-object p0

    .line 2973
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    return-object p0

    .line 2983
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    if-eqz p2, :cond_3

    .line 2977
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    return-object p0

    .line 2979
    :cond_3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    return-object p0
.end method

.method public set(Landroid/location/Location;)V
    .locals 1

    .line 2988
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 2989
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    return-void
.end method

.method public setBypass(Landroid/location/Location;)V
    .locals 1

    .line 2993
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextFine(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 2994
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->calculateNextCoarse(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    return-void
.end method
