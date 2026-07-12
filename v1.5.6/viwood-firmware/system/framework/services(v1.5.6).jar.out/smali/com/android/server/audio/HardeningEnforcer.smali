.class public Lcom/android/server/audio/HardeningEnforcer;
.super Ljava/lang/Object;
.source "HardeningEnforcer.java"


# static fields
.field public static final METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

.field public static final METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mIsAutomotive:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    .line 63
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v2, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    .line 66
    const-string/jumbo v3, "media_audio.value_audio_focus_gain_granted"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    const-string/jumbo v3, "media_audio.value_audio_focus_gain_transient_granted"

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    const-string/jumbo v3, "media_audio.value_audio_focus_gain_transient_duck_granted"

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    const-string/jumbo v3, "media_audio.value_audio_focus_gain_transient_excl_granted"

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    const-string/jumbo v2, "media_audio.value_audio_focus_gain_appops_denial"

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_appops_denial"

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_duck_appops_denial"

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_excl_appops_denial"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;Lcom/android/server/utils/EventLogger;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/server/audio/HardeningEnforcer;->mContext:Landroid/content/Context;

    .line 119
    iput-boolean p2, p0, Lcom/android/server/audio/HardeningEnforcer;->mIsAutomotive:Z

    .line 120
    iput-object p3, p0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    iput-object p4, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    .line 122
    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/audio/HardeningEnforcer;->mActivityManager:Landroid/app/ActivityManager;

    .line 123
    iput-object p5, p0, Lcom/android/server/audio/HardeningEnforcer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 124
    iput-object p6, p0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method


# virtual methods
.method public blockFocusMethod(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    .line 199
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/HardeningEnforcer;->getPackNameForUid(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p5

    :goto_0
    const/16 v6, 0x9a

    .line 203
    invoke-virtual {v0, v6, v1, v5, v4}, Lcom/android/server/audio/HardeningEnforcer;->noteOp(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x20

    .line 208
    invoke-virtual {v0, v7, v1, v5, v4}, Lcom/android/server/audio/HardeningEnforcer;->noteOp(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/16 v4, 0x23

    move/from16 v9, p7

    if-ge v9, v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 221
    :goto_2
    iget-object v10, v0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v10, 0x1

    .line 222
    :goto_4
    iget-object v11, v0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    .line 224
    :goto_5
    invoke-virtual {v0, v12, v3, v1, v4}, Lcom/android/server/audio/HardeningEnforcer;->metricsLogFocusReq(ZIIZ)V

    .line 226
    const-string v4, "AS.HardeningEnforcer"

    const/4 v12, 0x2

    const-string v13, "), "

    const-string v14, " ("

    const-string v15, "ignored for "

    const-string v16, " "

    const-string v17, " would be "

    const/16 p2, 0x0

    const-string v7, "AudioHardening focus request for req "

    if-eqz v9, :cond_7

    const/16 p5, 0x1

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v10, :cond_6

    move-object/from16 v3, v17

    goto :goto_6

    :cond_6
    move-object/from16 v3, v16

    .line 229
    :goto_6
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level: partial"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v0, v0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v0, v1, v12, v4}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8

    :cond_7
    const/16 p5, 0x1

    if-nez v6, :cond_9

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v11, :cond_8

    move-object/from16 v3, v17

    goto :goto_7

    :cond_8
    move-object/from16 v3, v16

    .line 238
    :goto_7
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level: full"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v0, v0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v0, v1, v12, v4}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9
    :goto_8
    if-eqz v9, :cond_a

    if-nez v10, :cond_b

    :cond_a
    if-nez v6, :cond_c

    if-eqz v11, :cond_c

    :cond_b
    return p5

    :cond_c
    return p2
.end method

.method public blockVolumeMethod(ILjava/lang/String;I)Z
    .locals 7

    .line 135
    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mIsAutomotive:Z

    const-string v2, "AS.HardeningEnforcer"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/16 p0, 0x2710

    if-ge p3, p0, :cond_1

    return v1

    .line 151
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Preventing volume method "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/16 v4, 0x9b

    const/4 v5, 0x0

    .line 158
    invoke-virtual {p0, v4, p3, p2, v5}, Lcom/android/server/audio/HardeningEnforcer;->noteOp(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_3

    .line 160
    const-string/jumbo p2, "media_audio.value_audio_volume_hardening_partial_restriction"

    invoke-static {p2, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    move p2, v3

    goto :goto_0

    :cond_3
    const/16 v4, 0x9a

    .line 163
    invoke-virtual {p0, v4, p3, p2, v5}, Lcom/android/server/audio/HardeningEnforcer;->noteOp(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 165
    const-string/jumbo p2, "media_audio.value_audio_volume_hardening_strict_restriction"

    invoke-static {p2, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    move p2, v6

    goto :goto_0

    .line 170
    :cond_4
    const-string/jumbo p2, "media_audio.value_audio_volume_hardening_allowed"

    invoke-static {p2, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    move p2, v1

    :goto_0
    if-eqz p2, :cond_7

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioHardening volume control for api "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    .line 177
    const-string p1, " would be "

    goto :goto_1

    :cond_5
    const-string p1, " "

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ignored for "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0, p3}, Lcom/android/server/audio/HardeningEnforcer;->getPackNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), level: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v3, :cond_6

    .line 180
    const-string/jumbo p1, "partial"

    goto :goto_2

    :cond_6
    const-string p1, "full"

    :goto_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object p0, p0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, p1, v6, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    return v3

    :cond_8
    return v1
.end method

.method public final getPackNameForUid(I)Ljava/lang/String;
    .locals 4

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/HardeningEnforcer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 283
    array-length v2, p0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget-object v3, p0, v2

    .line 285
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    aget-object p0, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw p0
.end method

.method public metricsLogFocusReq(ZIIZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 259
    sget-object p0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_0
    sget-object p0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 261
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AS.HardeningEnforcer"

    if-eqz v0, :cond_1

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad string for focus metrics gain:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " blocked:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 266
    :cond_1
    :try_start_0
    invoke-static {p0, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    if-nez p1, :cond_2

    if-eqz p4, :cond_2

    .line 270
    const-string/jumbo p1, "media_audio.value_audio_focus_grant_hardening_waived_by_sdk"

    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 274
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Counter error metricId:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for focus req:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " from uid:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final noteOp(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 304
    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
