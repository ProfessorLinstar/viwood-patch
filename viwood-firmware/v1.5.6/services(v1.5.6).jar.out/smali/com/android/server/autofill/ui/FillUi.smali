.class public final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# static fields
.field public static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field public final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field public mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field public final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field public mContentHeight:I

.field public mContentWidth:I

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public mFilterText:Ljava/lang/String;

.field public mFooter:Landroid/view/View;

.field public final mFullScreen:Z

.field public final mHeader:Landroid/view/View;

.field public final mIsCredmanAutofillSession:Z

.field public final mListView:Landroid/widget/ListView;

.field public mMaxInputLengthForAutofill:I

.field public final mTempPoint:Landroid/graphics/Point;

.field public final mThemeId:I

.field public final mUserContext:Landroid/content/Context;

.field public final mVisibleDatasetsMaxCount:I

.field public final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method public static synthetic $r8$lambda$34G_vgWdPNb_VNs6BEExHzv5Pk8(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 453
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring click on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FillUi"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$7F2rvuaWbO6qvVHwfQ3qB74qekA(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$2(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YFNiTVCPCYpyFFOF5e2Jdn6KRc(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$0(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KryltzAJDRfLvAXPjRUB95Qbh0Q(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/Dataset;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$3(Landroid/service/autofill/Dataset;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCOe_IjVqT1Jpeqy78g9tVUVGAg(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hlZkhNRIhvgVnuIz4QbJ_CPrMCs(Lcom/android/server/autofill/ui/FillUi;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$applyNewFilterText$7(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWAG5jaC8KAFACD7R8-PM4Zjm9s(Lcom/android/server/autofill/ui/FillUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$urMFEkR1A2bMKiddnOYc1HMe0Ec(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/FillUi;->lambda$applyCancelAction$5(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListView(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindow(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZILcom/android/server/autofill/ui/FillUi$Callback;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 155
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 106
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi-IA;)V

    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 156
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v6, "FillUi"

    if-eqz v4, :cond_0

    .line 157
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v7, "nightMode: %b displayId: %d"

    invoke-static {v6, v7, v4}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p8, :cond_1

    const v4, 0x10303ff

    goto :goto_0

    :cond_1
    const v4, 0x103040c

    .line 159
    :goto_0
    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    move-object/from16 v7, p10

    .line 160
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 161
    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 162
    new-instance v9, Landroid/view/ContextThemeWrapper;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {v9}, Lcom/android/server/autofill/Helper;->getUserContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;

    move/from16 v11, p9

    .line 164
    iput v11, v1, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    iput-boolean v11, v1, Lcom/android/server/autofill/ui/FillUi;->mIsCredmanAutofillSession:Z

    .line 167
    const-class v14, Landroid/view/WindowManager;

    invoke-virtual {v9, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    iput-object v14, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowManager:Landroid/view/WindowManager;

    .line 169
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v15

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v13

    if-eqz v8, :cond_3

    const v12, 0x1090049

    .line 176
    invoke-virtual {v14, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    :goto_2
    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    if-nez v15, :cond_5

    if-nez v13, :cond_5

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    const v12, 0x1090048

    .line 182
    invoke-virtual {v14, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_5
    :goto_3
    const v12, 0x109004a

    .line 179
    invoke-virtual {v14, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    goto :goto_2

    .line 184
    :goto_4
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    const v14, 0x102022e

    .line 185
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_6

    const v5, 0x104019b

    .line 187
    filled-new-array/range {p6 .. p6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const v5, 0x102022b

    .line 189
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    move-object/from16 v7, p7

    .line 191
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    if-eqz v8, :cond_8

    .line 197
    invoke-virtual {v9}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v5, -0x1

    .line 199
    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 200
    iget v5, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 201
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_8

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialized fillscreen LayoutParams "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_8
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 225
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v5

    if-lez v5, :cond_9

    .line 226
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v5

    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 227
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_a

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "overriding maximum visible datasets to "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 231
    :cond_9
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10e0009

    .line 232
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 235
    :cond_a
    :goto_5
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v7

    const-string v14, "Error inflating remote views"

    if-eqz v7, :cond_e

    const/4 v7, 0x0

    .line 243
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 244
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 245
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 246
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v2, 0x102022d

    .line 249
    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 252
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {v7, v10, v12, v5, v4}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v4

    .line 257
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x1

    .line 264
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 265
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;

    move-object/from16 v7, p2

    invoke-direct {v5, v1, v7}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v8, :cond_c

    .line 269
    invoke-static {v9, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 271
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v5, -0x2

    if-eqz v8, :cond_b

    iget v6, v0, Landroid/graphics/Point;->x:I

    goto :goto_6

    :cond_b
    move v6, v5

    .line 272
    :goto_6
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    iget v2, v0, Landroid/graphics/Point;->x:I

    const/high16 v5, -0x80000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 276
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 279
    invoke-virtual {v12, v2, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 281
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 284
    :cond_c
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v12, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 285
    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    .line 253
    :cond_d
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Permission error accessing RemoteView"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :goto_7
    invoke-interface/range {p10 .. p10}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    .line 260
    invoke-static {v6, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    .line 261
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-void

    :cond_e
    move-object/from16 v7, p2

    .line 287
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 288
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_f

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number datasets: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " max visible: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v15, :cond_11

    .line 295
    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    const/4 v9, 0x0

    .line 296
    invoke-virtual {v15, v10, v9, v0, v4}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    const v9, 0x102022a

    .line 299
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    move-object/from16 p6, v0

    .line 300
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 301
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_10

    const-string v0, "adding header"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_10
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v15, 0x0

    .line 303
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p6

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    .line 305
    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    const/4 v0, 0x0

    .line 308
    :goto_8
    const-string v9, "adding footer"

    const v15, 0x1020229

    if-eqz v13, :cond_15

    if-nez v11, :cond_15

    .line 310
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_14

    if-nez v0, :cond_12

    .line 313
    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    :cond_12
    const/4 v15, 0x0

    .line 315
    invoke-virtual {v13, v10, v15, v0, v4}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 317
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 319
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_13

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_13
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v15, 0x0

    .line 321
    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v15, 0x0

    goto :goto_9

    :cond_14
    const/4 v15, 0x0

    .line 323
    iput-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    goto :goto_9

    :cond_15
    const/4 v15, 0x0

    .line 326
    iput-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 329
    :goto_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v8, :cond_1f

    .line 331
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset;

    .line 332
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_16

    .line 335
    invoke-virtual {v0, v10}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v11

    .line 334
    invoke-static {v11}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v11

    if-nez v11, :cond_17

    .line 337
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not displaying UI on field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move/from16 p7, v8

    const v8, 0x1020229

    const/4 v11, 0x1

    goto/16 :goto_11

    .line 343
    :cond_17
    :try_start_2
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_18

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting remote view for "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_1
    move-exception v0

    move/from16 p7, v8

    :goto_b
    const v8, 0x1020229

    const/4 v11, 0x1

    goto/16 :goto_10

    .line 344
    :cond_18
    :goto_c
    iget-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;

    iget v13, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 p7, v8

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v11, v7, v8, v5, v13}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 352
    invoke-virtual {v0, v10}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v8

    if-nez v8, :cond_1a

    .line 357
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillValue;

    if-eqz v8, :cond_19

    .line 358
    invoke-virtual {v8}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 359
    invoke-virtual {v8}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_19
    const/4 v8, 0x0

    :goto_d
    move-object/from16 v21, v8

    const/16 v19, 0x0

    const/16 v20, 0x1

    goto :goto_f

    .line 362
    :cond_1a
    iget-object v8, v8, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez v8, :cond_1c

    .line 364
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_1b

    .line 365
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Explicitly disabling filter at id "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " for dataset #"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    move-object/from16 v19, v8

    const/16 v20, 0x0

    :goto_e
    const/16 v21, 0x0

    goto :goto_f

    :cond_1c
    move-object/from16 v19, v8

    const/16 v20, 0x1

    goto :goto_e

    .line 372
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 373
    const-string v8, "PINNED_DATASET_ID"

    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-boolean v8, v1, Lcom/android/server/autofill/ui/FillUi;->mIsCredmanAutofillSession:Z

    if-eqz v8, :cond_1e

    .line 374
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1e

    const v8, 0x1020229

    .line 376
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 377
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_1d

    .line 378
    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1d
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 381
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v7, 0x0

    .line 382
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v11, 0x1

    .line 383
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 384
    new-instance v7, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1, v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/Dataset;)V

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_11

    :cond_1e
    const v8, 0x1020229

    const/4 v11, 0x1

    .line 386
    new-instance v17, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v18, v0

    move-object/from16 v22, v7

    invoke-direct/range {v17 .. v22}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :catch_2
    move-exception v0

    goto/16 :goto_b

    .line 347
    :goto_10
    invoke-static {v6, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p2

    move/from16 v8, p7

    goto/16 :goto_a

    .line 392
    :cond_1f
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v2, 0x102022c

    .line 394
    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 395
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v15, 0x0

    .line 396
    invoke-virtual {v2, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 397
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-nez p4, :cond_20

    const/4 v7, 0x0

    .line 403
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_12

    .line 405
    :cond_20
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 408
    :goto_12
    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 409
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v12, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .locals 1

    .line 142
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 143
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forcing full-screen mode to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FillUi"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    sget-object p0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 623
    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120016

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 626
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1120015

    invoke-virtual {p0, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 629
    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public final announceSearchResultIfNeeded()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi-IA;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 879
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    :cond_1
    return-void
.end method

.method public final applyCancelAction(Landroid/view/View;[I)V
    .locals 5

    if-nez p2, :cond_0

    goto :goto_2

    .line 418
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v1, "FillUi"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill UI has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot apply actions because fill UI root is not a ViewGroup: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 427
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    .line 428
    aget v2, p2, v0

    .line 429
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring cancel action for view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " because it\'s not on "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 435
    :cond_3
    new-instance v2, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final applyNewFilterText()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    .line 460
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public destroy(Z)V
    .locals 2

    .line 519
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 520
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 521
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    if-eqz p1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUiWhenDestroyed()V

    :cond_1
    const/4 p1, 0x1

    .line 527
    iput-boolean p1, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 818
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 819
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 820
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 822
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 823
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 826
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 828
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 829
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_4

    .line 832
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 834
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 835
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 838
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 839
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 840
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 841
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContext: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 842
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUserContext: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 843
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 844
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    const v3, 0x10303ff

    if-eq v0, v3, :cond_7

    const v3, 0x103040c

    if-eq v0, v3, :cond_6

    .line 852
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 849
    :cond_6
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 846
    :cond_7
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_a

    .line 856
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 858
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 859
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "showing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowing(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 860
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "view: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 861
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 862
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "params: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 864
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "screen coordinates: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {p2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_9

    .line 866
    const-string p0, "N/A"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 868
    :cond_9
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {p0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p0

    .line 869
    aget p2, p0, v1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    return-void
.end method

.method public final heightLesserThanDisplayScreen(I)Z
    .locals 4

    int-to-double v0, p1

    .line 601
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double p0, p0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p0, v2

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$applyCancelAction$5(Landroid/view/View;)V
    .locals 2

    .line 436
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Cancelling session after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " clicked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FillUi"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->cancelSession()V

    return-void
.end method

.method public final synthetic lambda$applyNewFilterText$7(II)V
    .locals 2

    .line 461
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 465
    :goto_0
    const-string v1, "FillUi"

    if-gtz p2, :cond_3

    .line 466
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_2

    .line 467
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No dataset matches filter with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " chars"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    return-void

    .line 470
    :cond_3
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    if-le v0, p2, :cond_5

    .line 472
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_4

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not showing fill UI because user entered more than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " characters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_4
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    return-void

    .line 478
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 479
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 481
    :cond_6
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 482
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    .line 484
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result p2

    if-eq p2, p1, :cond_7

    .line 485
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final synthetic lambda$new$0(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 209
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 220
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic lambda$new$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 237
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$new$2(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method public final synthetic lambda$new$3(Landroid/service/autofill/Dataset;Landroid/view/View;)V
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method public final synthetic lambda$new$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 398
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object p1

    .line 399
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method public final newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;
    .locals 0

    .line 452
    new-instance p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;-><init>()V

    return-object p0
.end method

.method public requestShowFillUi()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 493
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_1

    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    return-void

    .line 499
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 510
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 513
    :cond_3
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 515
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    return-void
.end method

.method public final throwIfDestroyed()V
    .locals 1

    .line 616
    iget-boolean p0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez p0, :cond_0

    return-void

    .line 617
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot interact with a destroyed instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateContentSize()Z
    .locals 8

    .line 531
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 534
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 539
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 540
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v0, :cond_2

    .line 541
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 544
    :goto_0
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v2, :cond_3

    .line 545
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    return v3

    :cond_3
    return v0

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 552
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 554
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 555
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 557
    iget v2, v0, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 559
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 561
    iget-object v4, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v4

    .line 563
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 564
    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    .line 565
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    .line 566
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    if-ge v1, v4, :cond_7

    .line 570
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 571
    invoke-virtual {v6, v2, v3}, Landroid/view/View;->measure(II)V

    .line 572
    invoke-virtual {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 573
    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v1, v7, :cond_6

    .line 574
    invoke-virtual {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    :cond_7
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 579
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 580
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 581
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result p0

    or-int/2addr p0, v1

    return p0

    :cond_8
    return v5
.end method

.method public final updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 0

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 607
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int/2addr p1, p2

    if-eq p1, p2, :cond_0

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/FillUi;->heightLesserThanDisplayScreen(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 609
    iput p1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 0

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 589
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 590
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq p1, p2, :cond_0

    .line 591
    iput p1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
