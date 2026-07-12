.class public Lcom/android/server/people/prediction/ShareTargetPredictor;
.super Lcom/android/server/people/prediction/AppTargetPredictor;
.source "ShareTargetPredictor.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mChooserActivity:Ljava/lang/String;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method public static synthetic $r8$lambda$M6vo1Nh3_1db-dTvTXDVnHWMD1E(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)Ljava/lang/Integer;
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QDM8jMyYVYSbIITP14sMNooJIyA(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)I
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-string v0, "ShareTargetPredictor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V

    .line 75
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "intent_filter"

    const-class v0, Landroid/content/IntentFilter;

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 77
    const-string/jumbo p2, "systemui"

    const-string p3, "dark_launch_remote_prediction_service_enabled"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v1, "remote_app_predictor"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p5, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p2

    const-class p4, Landroid/app/prediction/AppPredictionManager;

    .line 82
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/prediction/AppPredictionManager;

    .line 83
    invoke-virtual {p2, p1}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_0

    .line 85
    :cond_0
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 88
    :goto_0
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104021c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mChooserActivity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppShareTargets(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppTarget;

    .line 206
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 206
    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v2

    .line 208
    new-instance v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/people/data/PackageData;->getClassLevelEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v2

    :goto_1
    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    .line 208
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getDirectShareTargets()Ljava/util/List;
    .locals 7

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    iget v3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/people/data/DataManager;->getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 177
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 178
    new-instance v4, Landroid/app/prediction/AppTarget$Builder;

    new-instance v5, Landroid/app/prediction/AppTargetId;

    .line 179
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    .line 181
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v2

    .line 184
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 186
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {v4, v3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 194
    invoke-virtual {v4, v3}, Lcom/android/server/people/data/PackageData;->getEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v6, v5

    .line 197
    :cond_1
    :goto_1
    new-instance v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-direct {v3, v2, v5, v6}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getShareEventType(Landroid/content/IntentFilter;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public predictTargets()V
    .locals 5

    .line 111
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "predictTargets"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 115
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/people/prediction/AppTargetPredictor;->updatePredictions(Ljava/util/List;)V

    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDirectShareTargets()Ljava/util/List;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getShareEventType(Landroid/content/IntentFilter;)I

    move-result v1

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 119
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 121
    new-instance v1, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;-><init>()V

    .line 122
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda1;-><init>()V

    .line 123
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getPredictionContext()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 125
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/people/prediction/AppTargetPredictor;->updatePredictions(Ljava/util/List;)V

    return-void
.end method

.method public reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 2

    .line 96
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "reportAppTargetEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V

    .line 102
    :cond_1
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_2

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    :cond_2
    return-void
.end method

.method public sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 9

    .line 136
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "sortTargets"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 140
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 143
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getAppShareTargets(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 144
    iget-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getShareEventType(Landroid/content/IntentFilter;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getPredictionContext()Landroid/app/prediction/AppPredictionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v6

    iget v7, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    iget-object v8, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mChooserActivity:Ljava/lang/String;

    .line 144
    invoke-static/range {v1 .. v8}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScoreForAppShare(Ljava/util/List;IIJLcom/android/server/people/data/DataManager;ILjava/lang/String;)V

    .line 148
    new-instance p0, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 151
    invoke-virtual {v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v1

    .line 152
    new-instance v2, Landroid/app/prediction/AppTarget$Builder;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getId()Landroid/app/prediction/AppTargetId;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 154
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v0

    .line 152
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_3
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
