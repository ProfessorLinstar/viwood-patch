.class public final Lcom/android/server/autofill/ui/DialogFillUi;
.super Ljava/lang/Object;
.source "DialogFillUi.java"


# instance fields
.field public final mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

.field public mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

.field public final mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDialog:Landroid/app/Dialog;

.field public mFilterText:Ljava/lang/String;

.field public final mListView:Landroid/widget/ListView;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mThemeId:I

.field public final mUserContext:Landroid/content/Context;

.field public final mVisibleDatasetsMaxCount:I


# direct methods
.method public static synthetic $r8$lambda$05Zww8WEAAPbaTGCEidVUs8bUgk(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialDatasetLayout$8(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$BpWN_115K7uV9sYFHWJxWWBtnxQ(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialAuthenticationLayout$6(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CBE6k_ZSdQhcD86EpD1iOaRb-gY(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$setDismissButton$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GDd9PoBLu3lcKlZaFR4IQf8K-vM(Lcom/android/server/autofill/ui/DialogFillUi;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$new$1(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H3xKYouFGb_IW541LpAsehLMTgQ(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 360
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$HTFZKDyu7J9_xg-iY5_JcA-Mc4E(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialAuthenticationLayout$5(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P_IL2eiNdFDMq9CAhltNLZA1wok(Lcom/android/server/autofill/ui/DialogFillUi;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialDatasetLayout$10(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SzZ8qsVwd3ZlUxBrtJjWvpJA244(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$createDatasetItems$7(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VPRhHTj1_G7uJFg53l9PVUDEUYo(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialAuthenticationLayout$4(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YBHZdYuXTDr3hWHy9i_EqnYOhnM(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cApiaMYD28Q6yw_ba3hb57MpmY4(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$setHeader$2(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/DialogFillUi$UiCallback;)V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "DialogFillUi"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nightMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p9, :cond_1

    const p9, 0x1030401

    goto :goto_0

    :cond_1
    const p9, 0x103040d

    .line 116
    :goto_0
    iput p9, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 117
    iput-object p10, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    .line 118
    iput-object p8, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 119
    iput-object p6, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    .line 120
    iput-object p7, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    .line 122
    new-instance p6, Landroid/view/ContextThemeWrapper;

    invoke-direct {p6, p1, p9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p6, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {p6}, Lcom/android/server/autofill/Helper;->getUserContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mUserContext:Landroid/content/Context;

    .line 124
    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p7, 0x109004b

    const/4 p8, 0x0

    .line 125
    invoke-virtual {p1, p7, p8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getShowFillDialogIcon()Z

    move-result p7

    if-eqz p7, :cond_2

    .line 128
    invoke-virtual {p0, p1, p5}, Lcom/android/server/autofill/ui/DialogFillUi;->setServiceIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->setHeader(Landroid/view/View;Landroid/service/autofill/FillResponse;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->getVisibleDatasetsMaxCount()I

    move-result p5

    iput p5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    .line 134
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 135
    iput-object p8, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 136
    iput-object p8, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 138
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 140
    invoke-interface {p10}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    .line 141
    const-string p2, "Error inflating remote views"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iput-object p8, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    return-void

    .line 146
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/ui/DialogFillUi;->createDatasetItems(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)Ljava/util/ArrayList;

    move-result-object p2

    .line 147
    new-instance p3, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-direct {p3, p0, p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Ljava/util/List;)V

    iput-object p3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    const p2, 0x1020231

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 149
    invoke-virtual {p0, p1, p4}, Lcom/android/server/autofill/ui/DialogFillUi;->initialDatasetLayout(Landroid/view/View;Ljava/lang/String;)V

    .line 152
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->setDismissButton(Landroid/view/View;)V

    .line 154
    new-instance p2, Landroid/app/Dialog;

    invoke-direct {p2, p6, p9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 155
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->setDialogParamsAsBottomSheet()V

    .line 157
    new-instance p1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 158
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 159
    :goto_2
    new-instance p3, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->show()V

    return-void
.end method


# virtual methods
.method public final announceSearchResultIfNeeded()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Lcom/android/server/autofill/ui/DialogFillUi-IA;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    .line 469
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->post()V

    :cond_1
    return-void
.end method

.method public final createDatasetItems(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)Ljava/util/ArrayList;
    .locals 13

    .line 282
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 283
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v2, "DialogFillUi"

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number datasets: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max visible: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    new-instance v3, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 295
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_8

    .line 297
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/service/autofill/Dataset;

    .line 298
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 301
    invoke-virtual {v8, v0}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 300
    invoke-static {v7}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-nez v7, :cond_1

    .line 303
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_7

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not displaying UI on field "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 311
    :cond_1
    :try_start_0
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting remote view for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 312
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mUserContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11, v3, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    invoke-virtual {v8, v0}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v7

    const/4 v9, 0x1

    if-nez v7, :cond_4

    .line 325
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 327
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v11

    :goto_2
    move v10, v9

    move-object v9, v11

    move-object v11, v0

    goto :goto_4

    .line 330
    :cond_4
    iget-object v7, v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez v7, :cond_6

    .line 332
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_5

    .line 333
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Explicitly disabling filter at id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for dataset #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v10, v5

    :goto_3
    move-object v9, v7

    goto :goto_4

    :cond_6
    move v10, v9

    goto :goto_3

    .line 340
    :goto_4
    new-instance v7, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    invoke-direct/range {v7 .. v12}, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 315
    :goto_5
    const-string v7, "Error inflating remote views"

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v4
.end method

.method public destroy()V
    .locals 2

    .line 416
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DialogFillUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 417
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->throwIfDestroyed()V

    .line 419
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 423
    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 443
    iget v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    const v1, 0x1030401

    if-eq v0, v1, :cond_1

    const v1, 0x103040d

    if-eq v0, v1, :cond_0

    .line 451
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_0
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_1
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x28

    .line 457
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x29

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 458
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 459
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 460
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "destroyed: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final getVisibleDatasetsMaxCount()I
    .locals 2

    .line 164
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 165
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result p0

    .line 166
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "overriding maximum visible datasets to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogFillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0

    .line 171
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0009

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .locals 6

    .line 254
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x102022f

    .line 263
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 264
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 270
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mUserContext:Landroid/content/Context;

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    .line 272
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 273
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    .line 274
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 275
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/DialogFillUi;->setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void

    .line 259
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No presentation for fill dialog authentication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initialDatasetLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 347
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 353
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 354
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 359
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/ui/DialogFillUi;->setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 364
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 369
    :goto_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result p1

    .line 370
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$createDatasetItems$7(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 290
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$initialAuthenticationLayout$4(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$initialAuthenticationLayout$5(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method public final synthetic lambda$initialAuthenticationLayout$6(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method public final synthetic lambda$initialDatasetLayout$10(II)V
    .locals 2

    .line 371
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-gtz p2, :cond_3

    .line 375
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_2

    .line 376
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 377
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No dataset matches filter with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " chars"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DialogFillUi"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    return-void

    .line 382
    :cond_3
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result p2

    iget v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    if-le p2, v1, :cond_4

    .line 383
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 384
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_1

    .line 386
    :cond_4
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 388
    :goto_1
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result p2

    if-eq p2, p1, :cond_5

    .line 389
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_5
    :goto_2
    return-void
.end method

.method public final synthetic lambda$initialDatasetLayout$8(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p1, p3}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    move-result-object p1

    .line 350
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method public final synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    return-void
.end method

.method public final synthetic lambda$new$1(ILandroid/content/DialogInterface;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onShown(I)V

    return-void
.end method

.method public final synthetic lambda$setDismissButton$3(Landroid/view/View;)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onDismissed()V

    return-void
.end method

.method public final synthetic lambda$setHeader$2(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 226
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    const p0, 0x1020234

    .line 245
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x1040180

    .line 247
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 249
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final setDialogParamsAsBottomSheet()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f6

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const v1, 0x20002

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, 0x3f19999a    # 0.6f

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v1, 0x10

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v1, 0x20

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v1, 0x51

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, 0x1

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 186
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 188
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 191
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 193
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 195
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    const v0, 0x1040182

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const p0, 0x1030326

    .line 197
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method public final setDismissButton(Landroid/view/View;)V
    .locals 1

    const v0, 0x1020232

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x1040187

    .line 240
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 241
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setHeader(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .locals 3

    .line 218
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogHeader()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const v0, 0x1020230

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 224
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 231
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mUserContext:Landroid/content/Context;

    check-cast p1, Landroid/view/ViewGroup;

    iget p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {p2, v2, p1, v1, p0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object p0

    .line 233
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 234
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final setServiceIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const p0, 0x102023c

    .line 205
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 206
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 208
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding service icon ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogFillUi"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final show()V
    .locals 2

    .line 396
    const-string v0, "DialogFillUi"

    const-string v1, "Showing fill dialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 398
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    return-void
.end method

.method public final throwIfDestroyed()V
    .locals 1

    .line 427
    iget-boolean p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    if-nez p0, :cond_0

    return-void

    .line 428
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot interact with a destroyed instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 435
    const-string p0, "NO TITLE"

    return-object p0
.end method
