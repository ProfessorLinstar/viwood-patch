.class public Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;
.super Ljava/lang/Object;
.source "ZenModeEventLogger.java"


# instance fields
.field public mCallingUid:I

.field public mNewConfig:Landroid/service/notification/ZenModeConfig;

.field public mNewPolicy:Landroid/app/NotificationManager$Policy;

.field public mNewZenMode:I

.field public mOrigin:I

.field public mPrevConfig:Landroid/service/notification/ZenModeConfig;

.field public mPrevPolicy:Landroid/app/NotificationManager$Policy;

.field public mPrevZenMode:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetChangedAutomaticRules(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedAutomaticRules()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNewManualRuleEnabler(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getNewManualRuleEnabler()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRulePackageAndUser(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getRulePackageAndUser(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minit(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->init(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldLogChanges(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 249
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 252
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return-void
.end method


# virtual methods
.method public activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;
    .locals 2

    .line 408
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    const/16 v1, 0x3e7

    .line 415
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 416
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_1
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz p1, :cond_3

    .line 420
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public getActiveRuleTypes()[I
    .locals 3

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object p0

    .line 451
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 452
    new-array p0, v2, [I

    return-object p0

    .line 455
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 456
    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 461
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 462
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 463
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public getAreChannelsBypassing()Z
    .locals 2

    .line 569
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 570
    iget p0, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public getChangeOrigin()I
    .locals 0

    .line 496
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return p0
.end method

.method public final getChangedAutomaticRules()Landroid/util/ArrayMap;
    .locals 3

    .line 594
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 596
    new-instance v1, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v2, p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 597
    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getChangedRuleType()I
    .locals 3

    .line 359
    new-instance v0, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0, v1, p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 360
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 367
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getManualRuleDiff()Landroid/service/notification/ZenModeDiff$RuleDiff;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 368
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 378
    :cond_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 380
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeDiff$RuleDiff;

    if-eqz v0, :cond_3

    .line 381
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    return v1
.end method

.method public getDNDPolicyProto()[B
    .locals 5

    .line 512
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 516
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 517
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 520
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v2, :cond_2

    .line 521
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 522
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 523
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000002L

    .line 522
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 524
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 525
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 526
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000005L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 527
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000006L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 528
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000007L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 529
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000008L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 530
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000009L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 532
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000aL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 533
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000bL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 534
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000cL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 535
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000dL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 536
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000eL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 537
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000fL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 538
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 539
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000010L

    .line 538
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 545
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 547
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v2

    .line 546
    invoke-static {v2}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    const-wide v3, 0x10e00000011L

    .line 545
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 548
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 550
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v2

    .line 549
    invoke-static {v2}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    const-wide v3, 0x10e00000012L

    .line 548
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 551
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 552
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    move-result v2

    const-wide v3, 0x10e00000013L

    .line 551
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 554
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    const-wide v2, 0x10e00000014L

    .line 553
    invoke-virtual {v1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    .line 558
    :cond_2
    const-string p0, "ZenModeEventLogger"

    const-string v2, "attempted to write zen mode log event with null policy"

    invoke-static {p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_1
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 562
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getEventId()Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    move-result v0

    const-string v1, "ZenModeEventLogger"

    if-nez v0, :cond_0

    .line 323
    const-string v0, "attempt to get DNDStateChanged fields without shouldLog=true"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->zenModeFlipped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    if-nez p0, :cond_1

    .line 327
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_ON:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0

    .line 329
    :cond_1
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_OFF:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0

    .line 333
    :cond_2
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v0, :cond_5

    .line 337
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 338
    :cond_3
    const-string p0, "Detected policy diff even though DND is OFF and not toggled"

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_4
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0

    .line 344
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    .line 349
    :cond_6
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0

    .line 345
    :cond_7
    :goto_0
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_POLICY_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0
.end method

.method public getIsUserAction()Z
    .locals 1

    .line 470
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getNewManualRuleEnabler()Ljava/lang/String;
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez p0, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumRulesActive()I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result p0

    return p0
.end method

.method public getPackageUid()I
    .locals 0

    .line 487
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    return p0
.end method

.method public final getRulePackageAndUser(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 616
    invoke-virtual {p2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    :cond_0
    const/4 p0, 0x0

    if-nez v0, :cond_1

    return-object p0

    .line 624
    :cond_1
    iget-object p2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p1, :cond_3

    .line 626
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz p2, :cond_2

    .line 627
    new-instance p0, Landroid/util/Pair;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 629
    :cond_2
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_3

    .line 630
    new-instance p0, Landroid/util/Pair;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 631
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object p0
.end method

.method public final hasActiveRuleCountDiff()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasChannelsBypassingDiff()Z
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 577
    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 578
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getAreChannelsBypassing()Z

    move-result p0

    if-eq v0, p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final hasPolicyDiff()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final init(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V
    .locals 1

    .line 259
    iget v0, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 260
    iget v0, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 261
    iget-object v0, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 262
    iget-object v0, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 263
    iget-object p1, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mPolicy:Landroid/app/NotificationManager$Policy;

    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    .line 264
    iget-object p1, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mPolicy:Landroid/app/NotificationManager$Policy;

    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 265
    iput p3, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 266
    iput p4, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return-void
.end method

.method public isFromSystemOrSystemUi()Z
    .locals 2

    .line 475
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I
    .locals 0

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final shouldLogChanges()Z
    .locals 3

    .line 284
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->zenModeFlipped()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasActiveRuleCountDiff()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 298
    :cond_1
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasActiveRuleCountDiff()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public final toState(Z)I
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public final zenModeFlipped()Z
    .locals 2

    .line 306
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
