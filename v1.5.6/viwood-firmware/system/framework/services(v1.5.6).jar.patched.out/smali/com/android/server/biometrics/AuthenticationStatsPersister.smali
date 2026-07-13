.class public Lcom/android/server/biometrics/AuthenticationStatsPersister;
.super Ljava/lang/Object;
.source "AuthenticationStatsPersister.java"


# instance fields
.field public final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "authentication_stats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final buildFrrStats(Lorg/json/JSONObject;IIIJJI)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x4

    .line 200
    const-string v0, "enrollment_notifications"

    if-ne p9, p0, :cond_0

    .line 201
    const-string p0, "face_attempts"

    .line 202
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "face_rejections"

    .line 203
    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    .line 204
    invoke-virtual {p0, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "face_last_enroll_time"

    .line 205
    invoke-virtual {p0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "face_last_notification_time"

    .line 206
    invoke-virtual {p0, p1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p9, p0, :cond_1

    .line 209
    const-string p0, "fingerprint_attempts"

    .line 210
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "fingerprint_rejections"

    .line 211
    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    .line 212
    invoke-virtual {p0, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "fingerprint_last_enroll_time"

    .line 213
    invoke-virtual {p0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "fingerprint_last_notification_time"

    .line 214
    invoke-virtual {p0, p1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllFrrStats(I)Ljava/util/List;
    .locals 5

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->readFrrStats()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 81
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getFaceAuthenticationStatsFromJson(Lorg/json/JSONObject;)Lcom/android/server/biometrics/AuthenticationStats;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 84
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getFingerprintAuthenticationStatsFromJson(Lorg/json/JSONObject;)Lcom/android/server/biometrics/AuthenticationStats;

    move-result-object v3

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    const-string v3, "Unable to resolve authentication stats JSON: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuthenticationStatsPersister"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getFaceAuthenticationStatsFromJson(Lorg/json/JSONObject;)Lcom/android/server/biometrics/AuthenticationStats;
    .locals 10

    .line 96
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStats;

    const-string/jumbo v1, "user_id"

    const/16 v2, -0x2710

    .line 97
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "face_attempts"

    .line 98
    invoke-virtual {p0, p1, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    const-string v3, "face_rejections"

    .line 99
    invoke-virtual {p0, p1, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    const-string v4, "enrollment_notifications"

    .line 100
    invoke-virtual {p0, p1, v4}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    const-string v5, "face_last_enroll_time"

    .line 101
    invoke-virtual {p0, p1, v5}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "face_last_notification_time"

    .line 102
    invoke-virtual {p0, p1, v7}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(IIIIJJI)V

    return-object v0
.end method

.method public getFingerprintAuthenticationStatsFromJson(Lorg/json/JSONObject;)Lcom/android/server/biometrics/AuthenticationStats;
    .locals 10

    .line 109
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStats;

    const-string/jumbo v1, "user_id"

    const/16 v2, -0x2710

    .line 110
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "fingerprint_attempts"

    .line 111
    invoke-virtual {p0, p1, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    const-string v3, "fingerprint_rejections"

    .line 112
    invoke-virtual {p0, p1, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    const-string v4, "enrollment_notifications"

    .line 113
    invoke-virtual {p0, p1, v4}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    const-string v5, "fingerprint_last_enroll_time"

    .line 114
    invoke-virtual {p0, p1, v5}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "fingerprint_last_notification_time"

    .line 116
    invoke-virtual {p0, p1, v7}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(IIIIJJI)V

    return-object v0
.end method

.method public final getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 0

    .line 231
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method public final getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getLongValue(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 0

    .line 240
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p3
.end method

.method public final getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 222
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public persistFrrStats(IIIIJJI)V
    .locals 12

    .line 152
    const-string v10, "AuthenticationStatsPersister"

    :try_start_0
    new-instance v11, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->readFrrStats()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 156
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "user_id"

    if-eqz v2, :cond_1

    .line 157
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v4, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 169
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    :cond_2
    move-object v0, p0

    move v2, p2

    move v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object v1, v4

    move/from16 v4, p4

    .line 171
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->buildFrrStats(Lorg/json/JSONObject;IIIJJI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frrStatsSet to persist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "frr_stats"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 180
    :catch_0
    const-string v0, "Unable to persist authentication stats"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public persistFrrThreshold(F)V
    .locals 1

    .line 188
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "frr_threshold"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final readFrrStats()Ljava/util/Set;
    .locals 2

    .line 192
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "frr_stats"

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public removeFrrStats(I)V
    .locals 4

    .line 127
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->readFrrStats()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 130
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v2, "user_id"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "frr_stats"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
