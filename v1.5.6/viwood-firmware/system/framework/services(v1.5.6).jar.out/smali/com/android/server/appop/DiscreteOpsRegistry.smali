.class public abstract Lcom/android/server/appop/DiscreteOpsRegistry;
.super Ljava/lang/Object;
.source "DiscreteOpsRegistry.java"


# static fields
.field public static final ADDITIONAL_DISCRETE_OPS:[I

.field public static final DEFAULT_DISCRETE_HISTORY_CUTOFF:J

.field public static final DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

.field public static final IMPORTANT_OPS_FOR_SECURITY:[I

.field public static final MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

.field public static final TAG:Ljava/lang/String; = "DiscreteOpsRegistry"

.field public static sDiscreteFlags:I

.field public static sDiscreteHistoryCutoff:J

.field public static sDiscreteHistoryQuantization:J

.field public static sDiscreteOps:[I


# instance fields
.field public mDebugMode:Z


# direct methods
.method public static synthetic $r8$lambda$-POzhrtzjSSLkwb74LtsON-5_4M(Lcom/android/server/appop/DiscreteOpsRegistry;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsRegistry;->lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 99
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->IMPORTANT_OPS_FOR_SECURITY:[I

    const/4 v0, 0x6

    .line 111
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->ADDITIONAL_DISCRETE_OPS:[I

    const-wide/16 v0, 0x7

    .line 128
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    const-wide/16 v0, 0x1e

    .line 129
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    const-wide/16 v0, 0x1

    .line 133
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    const/4 v0, 0x0

    .line 138
    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x19
        0x3f
        0x49
        0x58
        0x59
        0x2a
        0x29
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x78
        0x88
        0x65
        0x93
        0x8d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    return-void
.end method

.method public static discretizeDuration(J)J
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 204
    :cond_0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    add-long/2addr p0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static discretizeTimeStamp(J)J
    .locals 2

    .line 198
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static getDefaultLegacyOps()[I
    .locals 1

    .line 273
    const-string v0, "1,0,147,26,27,100,101,120,136,149,152,150,141"

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultOpsList()[I
    .locals 1

    .line 262
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsRegistry;->getDefaultLegacyOps()[I

    move-result-object v0

    return-object v0
.end method

.method public static isDiscreteOp(II)Z
    .locals 1

    .line 208
    sget-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return v0

    .line 211
    :cond_0
    sget p0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteFlags:I

    and-int/2addr p0, p1

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static parseOpsList(Ljava/lang/String;)[I
    .locals 4

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    new-array p0, v1, [Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 283
    :goto_0
    array-length v0, p0

    .line 284
    new-array v2, v0, [I

    :goto_1
    if-ge v1, v0, :cond_1

    .line 287
    :try_start_0
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 290
    sget-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse Discrete ops list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsRegistry;->getDefaultOpsList()[I

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public abstract addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
.end method

.method public abstract clearHistory()V
.end method

.method public abstract clearHistory(ILjava/lang/String;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
.end method

.method public final synthetic lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public abstract offsetHistory(J)V
.end method

.method public abstract recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V
.end method

.method public setDebugMode(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    return-void
.end method

.method public final setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 218
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_cutoff_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    .line 221
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    if-nez v0, :cond_1

    .line 222
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    goto :goto_0

    .line 226
    :cond_0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_quantization_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    .line 231
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    if-nez p0, :cond_3

    .line 232
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    goto :goto_1

    .line 236
    :cond_2
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    .line 238
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    const-string v0, "discrete_history_op_flags"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/16 v1, 0xb

    if-eqz p0, :cond_4

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_4
    sput v1, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteFlags:I

    .line 240
    const-string p0, "discrete_history_ops_cslist"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    .line 241
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsRegistry;->getDefaultOpsList()[I

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object p0

    :goto_2
    sput-object p0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    .line 243
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 0
    return-void
.end method

.method public systemReady()V
    .locals 3

    .line 147
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/DiscreteOpsRegistry;)V

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x0

    .line 151
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public abstract writeAndClearOldAccessHistory()V
.end method
