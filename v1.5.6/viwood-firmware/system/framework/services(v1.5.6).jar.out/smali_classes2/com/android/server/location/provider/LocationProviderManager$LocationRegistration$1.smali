.class public Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mPreviousLocation:Landroid/location/Location;

.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public test(Landroid/location/Location;)Z
    .locals 10

    .line 960
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, " provider registration "

    const-string v3, "LocationManagerService"

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_5

    .line 961
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_5

    .line 962
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    .line 963
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_5

    .line 964
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    goto/16 :goto_0

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    if-eqz v0, :cond_4

    .line 971
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 972
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 973
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 974
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v6

    long-to-float v0, v6

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v6

    float-to-long v6, v0

    const-wide/16 v8, 0x7530

    .line 973
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 976
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 977
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long v0, v4, v8

    if-gez v0, :cond_2

    .line 978
    sget-boolean p1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz p1, :cond_1

    .line 979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " dropped delivery - too fast (deltaMs="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    .line 987
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 988
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v0

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    .line 989
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v6, v0

    cmpg-double v0, v6, v4

    if-gtz v0, :cond_4

    .line 992
    sget-boolean p1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz p1, :cond_3

    .line 993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " dropped delivery - too close"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    .line 1000
    :cond_4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    const/4 p0, 0x1

    return p0

    .line 965
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " dropped delivery - invalid latitude or longitude."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 955
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->test(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method
