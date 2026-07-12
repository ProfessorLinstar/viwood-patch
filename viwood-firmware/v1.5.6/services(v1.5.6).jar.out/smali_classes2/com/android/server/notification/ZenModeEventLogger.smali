.class public Lcom/android/server/notification/ZenModeEventLogger;
.super Ljava/lang/Object;
.source "ZenModeEventLogger.java"


# instance fields
.field public mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-direct {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 77
    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public logChanges()V
    .locals 13

    .line 209
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 210
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getEventId()Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->getId()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget v3, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    iget v4, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 213
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 214
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getNumRulesActive()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 215
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getIsUserAction()Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 216
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getPackageUid()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 217
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getDNDPolicyProto()[B

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 218
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getAreChannelsBypassing()Z

    move-result v10

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 219
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getActiveRuleTypes()[I

    move-result-object v11

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 220
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangeOrigin()I

    move-result v12

    const/16 v1, 0x291

    .line 209
    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIZI[BZ[II)V

    return-void
.end method

.method public final maybeLogZenChange(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$minit(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V

    .line 118
    iget-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mshouldLogChanges(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger;->maybeReassignCallingUid()V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger;->logChanges()V

    .line 124
    :cond_0
    new-instance p1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-direct {p1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    return-void
.end method

.method public final maybeReassignCallingUid()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->isFromSystemOrSystemUi()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 144
    invoke-static {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mgetNewManualRuleEnabler(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mgetNewManualRuleEnabler(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v3, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget-object v3, v3, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->user:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v3, v1

    .line 158
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 161
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->isFromSystemOrSystemUi()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 174
    invoke-static {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mgetChangedAutomaticRules(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    const/4 v3, 0x0

    .line 179
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 178
    invoke-static {v2, v4, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mgetRulePackageAndUser(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 182
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 187
    :cond_4
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 188
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, v2

    :cond_5
    if-eq v3, v1, :cond_7

    if-nez v0, :cond_6

    goto :goto_1

    .line 197
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 198
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iput v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 200
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to find package name "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZenModeEventLogger"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method
