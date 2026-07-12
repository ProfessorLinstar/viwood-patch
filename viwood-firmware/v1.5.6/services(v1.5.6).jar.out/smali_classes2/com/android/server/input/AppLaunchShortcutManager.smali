.class public final Lcom/android/server/input/AppLaunchShortcutManager;
.super Ljava/lang/Object;
.source "AppLaunchShortcutManager.java"


# static fields
.field public static final sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

.field public static final sApplicationLaunchKeyRoles:Landroid/util/SparseArray;


# instance fields
.field public final mBookmarks:Ljava/util/Map;

.field public mConsumeSearchKeyUp:Z

.field public final mContext:Landroid/content/Context;

.field public mSearchKeyShortcutPending:Z

.field public mShortcutKeyServices:Landroid/util/LongSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    .line 89
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    .line 90
    const-string v3, "android.app.role.BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0x41

    .line 92
    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xcf

    .line 94
    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd0

    .line 96
    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd1

    .line 98
    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd2

    .line 100
    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    .line 111
    iput-object p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 327
    const-string v0, "AppLaunchShortcutManager:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 329
    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputGestureData;

    .line 330
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getBookmarks()Ljava/util/List;
    .locals 1

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleShortcutService(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const v1, 0x11003

    and-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    int-to-long v4, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v4

    .line 223
    iget-object p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/IShortcutService;

    if-eqz p1, :cond_1

    .line 226
    :try_start_0
    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut key service not found, deleting shortcut code: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppShortcutManager"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v3
.end method

.method public init()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/android/server/input/AppLaunchShortcutManager;->loadShortcuts()V

    return-void
.end method

.method public interceptKey(Landroid/view/KeyEvent;)Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;
    .locals 3

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object p0

    return-object p0

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    goto :goto_0

    .line 301
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    .line 302
    iget-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    if-eqz p1, :cond_2

    .line 303
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    .line 304
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetCONSUME_KEY()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object p0

    return-object p0

    .line 307
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object p0

    return-object p0

    .line 310
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object p0

    return-object p0

    .line 315
    :cond_4
    new-instance v0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    invoke-virtual {p0, p1}, Lcom/android/server/input/AppLaunchShortcutManager;->interceptShortcut(Landroid/view/KeyEvent;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;-><init>(ZLandroid/hardware/input/AppLaunchData;)V

    return-object v0
.end method

.method public final interceptShortcut(Landroid/view/KeyEvent;)Landroid/hardware/input/AppLaunchData;
    .locals 4

    .line 245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 246
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const v2, 0x11003

    and-int/2addr v1, v2

    .line 252
    iget-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    if-nez v1, :cond_4

    .line 263
    sget-object p0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 264
    sget-object p1, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-static {p0}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    return-object p0

    .line 267
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 268
    invoke-static {p1}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    return-object v3

    .line 277
    :cond_5
    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    .line 278
    invoke-static {v0, v1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    .line 277
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData;

    if-nez p0, :cond_6

    return-object v3

    .line 282
    :cond_6
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    return-object p0
.end method

.method public final loadShortcuts()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 120
    const-string v3, "AppShortcutManager"

    :try_start_0
    iget-object v4, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1170004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 121
    const-string v5, "bookmarks"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 122
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 125
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-ne v6, v2, :cond_0

    goto/16 :goto_6

    .line 131
    :cond_0
    const-string v6, "bookmark"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 132
    const-string v0, "TAG_BOOKMARK not found"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 136
    :cond_1
    const-string/jumbo v6, "package"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    const-string v8, "class"

    invoke-interface {v4, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    const-string v9, "category"

    invoke-interface {v4, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    const-string/jumbo v10, "shift"

    invoke-interface {v4, v7, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 140
    const-string/jumbo v11, "role"

    invoke-interface {v4, v7, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    const-string/jumbo v12, "shortcut"

    invoke-interface {v4, v7, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 144
    iget-object v13, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->Bookmark:[I

    invoke-virtual {v13, v4, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :try_start_1
    invoke-virtual {v13, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 148
    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v14, :cond_2

    .line 152
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 154
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 155
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v16, v1

    new-array v1, v2, [C

    aput-char v13, v1, v16

    .line 154
    invoke-virtual {v5, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 157
    array-length v13, v1

    const/4 v2, 0x2

    if-ne v13, v2, :cond_3

    .line 158
    aget-object v1, v1, v16

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    .line 161
    :cond_3
    :goto_1
    const-string v1, " modifierState="

    if-nez v14, :cond_5

    .line 162
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keycode required for bookmark with category="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " packageName="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " className="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " role="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " shiftName="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " shortcut="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    move/from16 v1, v16

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v15, :cond_7

    if-eqz v10, :cond_6

    .line 171
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "true"

    .line 172
    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    move/from16 v2, v16

    :goto_3
    const/high16 v10, 0x10000

    or-int v15, v2, v10

    .line 177
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 178
    invoke-static {v6, v8}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v7

    goto :goto_4

    .line 179
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 180
    invoke-static {v9}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v7

    goto :goto_4

    .line 181
    :cond_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 182
    invoke-static {v11}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v7

    :cond_a
    :goto_4
    if-eqz v7, :cond_4

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding shortcut "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keycode="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v1}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    .line 189
    invoke-static {v14, v15}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v1

    const/16 v2, 0x33

    .line 190
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v7}, Landroid/hardware/input/InputGestureData$Builder;->setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 193
    iget-object v2, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v6

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 150
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    throw v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    :goto_5
    const-string v1, "Got exception parsing bookmarks."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", already exists."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method
