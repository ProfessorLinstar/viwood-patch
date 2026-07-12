.class public abstract Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;
.super Ljava/lang/Object;
.source "BlobStoreConfig.java"


# static fields
.field public static COMMIT_COOL_OFF_DURATION_MS:J

.field public static final DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

.field public static final DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

.field public static final DEFAULT_IDLE_JOB_PERIOD_MS:J

.field public static final DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

.field public static DEFAULT_LEASE_DESC_CHAR_LIMIT:I

.field public static DEFAULT_MAX_ACTIVE_SESSIONS:I

.field public static DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

.field public static DEFAULT_MAX_COMMITTED_BLOBS:I

.field public static DEFAULT_MAX_LEASED_BLOBS:I

.field public static final DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

.field public static final DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

.field public static DELETE_ON_LAST_LEASE_DELAY_MS:J

.field public static IDLE_JOB_PERIOD_MS:J

.field public static LEASE_ACQUISITION_WAIT_DURATION_MS:J

.field public static LEASE_DESC_CHAR_LIMIT:I

.field public static MAX_ACTIVE_SESSIONS:I

.field public static MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

.field public static MAX_COMMITTED_BLOBS:I

.field public static MAX_LEASED_BLOBS:I

.field public static SESSION_EXPIRY_TIMEOUT_MS:J

.field public static TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

.field public static TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

.field public static USE_REVOCABLE_FD_FOR_READS:Z


# direct methods
.method public static synthetic $r8$lambda$unYz3hyV5nejxKvtymKhcBV8QJ4(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "session_expiry_timeout_ms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "idle_job_period_ms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "delete_on_last_lease_delay_ms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v2, "total_bytes_per_app_limit_fraction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v2, "max_committed_blobs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v2, "lease_desc_char_limit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "total_bytes_per_app_limit_floor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "commit_cool_off_duration_ms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "max_permitted_pks"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "max_leased_blobs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string/jumbo v2, "lease_acquisition_wait_time_ms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string/jumbo v2, "use_revocable_fd_for_reads"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string/jumbo v2, "max_active_sessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown key in device config properties: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BlobStore"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :pswitch_0
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    return-void

    .line 189
    :pswitch_1
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    return-void

    .line 216
    :pswitch_2
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    return-void

    :pswitch_3
    const v0, 0x3c23d70a    # 0.01f

    .line 200
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    return-void

    .line 223
    :pswitch_4
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    return-void

    .line 233
    :pswitch_5
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    return-void

    .line 196
    :pswitch_6
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    return-void

    .line 208
    :pswitch_7
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    return-void

    .line 229
    :pswitch_8
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    return-void

    .line 226
    :pswitch_9
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    return-void

    .line 204
    :pswitch_a
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    return-void

    .line 212
    :pswitch_b
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    return-void

    .line 220
    :pswitch_c
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72bf4325 -> :sswitch_c
        -0x52e8bbf4 -> :sswitch_b
        -0x186c76bb -> :sswitch_a
        -0x10f353c4 -> :sswitch_9
        0xba4f96 -> :sswitch_8
        0x1028a673 -> :sswitch_7
        0x39770739 -> :sswitch_6
        0x538ddc1b -> :sswitch_5
        0x54964518 -> :sswitch_4
        0x674c73b5 -> :sswitch_3
        0x6d98c9a4 -> :sswitch_2
        0x717335b7 -> :sswitch_1
        0x78947a67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 72
    sput-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    const-wide/16 v1, 0x7

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 80
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 88
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x12c

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 90
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    const v0, 0x3c23d70a    # 0.01f

    .line 100
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 109
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 111
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    const-wide/16 v3, 0x30

    .line 122
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 123
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    const/4 v3, 0x0

    .line 132
    sput-boolean v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 141
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 142
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    const/16 v0, 0xfa

    .line 149
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    .line 150
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    const/16 v0, 0x3e8

    .line 156
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    .line 157
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    const/16 v0, 0x1f4

    .line 163
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    .line 164
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    const/16 v0, 0x12c

    .line 171
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 172
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 179
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    .line 180
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    return-void
.end method

.method public static dump(Landroid/util/IndentingPrintWriter;Landroid/content/Context;)V
    .locals 5

    .line 244
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 245
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 246
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "idle_job_period_ms"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 244
    const-string v1, "%s: [cur: %s, def: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 247
    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 248
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 249
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "session_expiry_timeout_ms"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 247
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 250
    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    const/16 v0, 0x8

    .line 251
    invoke-static {p1, v2, v3, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 252
    invoke-static {p1, v3, v4, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "total_bytes_per_app_limit_floor"

    filled-new-array {v0, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 250
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 254
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 255
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const v0, 0x3c23d70a    # 0.01f

    .line 256
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v2, "total_bytes_per_app_limit_fraction"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 254
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 258
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 259
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "lease_acquisition_wait_time_ms"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 257
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 260
    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 261
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 262
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "commit_cool_off_duration_ms"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 260
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    sget-boolean p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v2, "use_revocable_fd_for_reads"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 263
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 265
    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 266
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 267
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "delete_on_last_lease_delay_ms"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 265
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "max_active_sessions"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 268
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 270
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "max_committed_blobs"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 270
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 272
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "max_leased_blobs"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 272
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 274
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "max_permitted_pks"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 274
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 277
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "lease_desc_char_limit"

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 277
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static refresh(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blobstore"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;-><init>(Landroid/provider/DeviceConfig$Properties;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
