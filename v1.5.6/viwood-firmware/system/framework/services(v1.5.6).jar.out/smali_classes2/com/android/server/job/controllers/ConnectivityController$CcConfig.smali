.class Lcom/android/server/job/controllers/ConnectivityController$CcConfig;
.super Ljava/lang/Object;
.source "ConnectivityController.java"


# static fields
.field static final KEY_AVOID_UNDEFINED_TRANSPORT_AFFINITY:Ljava/lang/String; = "conn_avoid_undefined_transport_affinity"


# instance fields
.field public AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

.field public NETWORK_ACTIVATION_EXPIRATION_MS:J

.field public NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

.field public mFlexIsEnabled:Z

.field public mShouldReprocessNetworkCapabilities:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFlexIsEnabled(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldReprocessNetworkCapabilities(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmFlexIsEnabled(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShouldReprocessNetworkCapabilities(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 2

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1986
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    .line 1988
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    .line 2012
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    const-wide/16 v0, 0x2710

    .line 2019
    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    const-wide/32 v0, 0x1c61a0

    .line 2025
    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 2060
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2061
    const-class v0, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2062
    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2065
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 2066
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2065
    const-string v1, "conn_avoid_undefined_transport_affinity"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 2066
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2067
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 2068
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2067
    const-string v1, "conn_network_activation_expiration_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 2068
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2069
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 2070
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 2069
    const-string v0, "conn_network_activation_max_wait_time_ms"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    .line 2070
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2072
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 2031
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "conn_avoid_undefined_transport_affinity"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "conn_network_activation_max_wait_time_ms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "conn_network_activation_expiration_ms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2033
    :pswitch_0
    invoke-virtual {p1, p2, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 2035
    iget-boolean p2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    if-eq p2, p1, :cond_3

    .line 2036
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 2037
    iput-boolean v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    return-void

    :pswitch_1
    const-wide/32 v2, 0x1c61a0

    .line 2049
    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 2051
    iget-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_3

    .line 2052
    iput-wide p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 2053
    iput-boolean v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    return-void

    :pswitch_2
    const-wide/16 v0, 0x2710

    .line 2041
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 2043
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3

    .line 2044
    iput-wide p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x48c9c28f -> :sswitch_2
        0x1f3fb46e -> :sswitch_1
        0x3c4b114a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
