.class public final Lcom/android/server/input/KeyboardGlyphManager;
.super Ljava/lang/Object;
.source "KeyboardGlyphManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGlyphMapCache:Landroid/util/SparseArray;

.field public mGlyphMapDataList:Ljava/util/List;

.field public mGlyphMapDataLoaded:Z

.field public final mGlyphMapLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$mresetMaps(Lcom/android/server/input/KeyboardGlyphManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardGlyphManager;->resetMaps()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-string v0, "KeyboardGlyphManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardGlyphManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    .line 91
    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    .line 92
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 358
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapDataList()Ljava/util/List;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyboardGlyphManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " glyph maps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 361
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    .line 362
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 363
    sget-boolean v2, Lcom/android/server/input/KeyboardGlyphManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 367
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .locals 1

    .line 377
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_0

    .line 378
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 327
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/KeyGlyphMap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardGlyphManager;->getKeyGlyphMapInternal(I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v1

    .line 330
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    monitor-exit v0

    return-object v1

    .line 332
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getKeyGlyphMapInternal(I)Landroid/hardware/input/KeyGlyphMap;
    .locals 5

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardGlyphManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 338
    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    if-nez v1, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapDataList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    const/4 v1, 0x1

    .line 343
    iput-boolean v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    .line 346
    invoke-static {v2}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetvendorId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-static {v2}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetproductId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I

    move-result v3

    .line 347
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 348
    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final getKeyboardGlyphMapsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/util/List;
    .locals 13

    .line 164
    iget-object p0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 169
    :cond_0
    const-string v0, "android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 170
    const-string v2, "/"

    const-string v3, "KeyboardGlyphManager"

    if-nez p0, :cond_1

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS\' on receiver "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 177
    :cond_1
    :try_start_0
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :try_start_1
    const-string v4, "keyboard-glyph-maps"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 183
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 184
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_2

    .line 205
    :try_start_2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 188
    :cond_2
    :try_start_3
    const-string v5, "keyboard-glyph-map"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 191
    :cond_3
    sget-object v4, Lcom/android/internal/R$styleable;->KeyboardGlyphMap:[I

    invoke-virtual {p1, p0, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x0

    .line 193
    :try_start_4
    invoke-virtual {v4, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v5, 0x2

    const/4 v6, -0x1

    .line 194
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v5, 0x1

    .line 195
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    if-eqz v9, :cond_4

    if-eq v10, v6, :cond_4

    if-eq v11, v6, :cond_4

    .line 197
    new-instance v6, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/android/server/input/KeyboardGlyphManager-IA;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 201
    :cond_4
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    if-eqz p0, :cond_5

    .line 179
    :try_start_6
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 207
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse keyboard glyph map resource from receiver "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 217
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetpackageName(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetreceiverName(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xc0080

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 222
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    invoke-static {p1}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetresourceId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapFromResource(Landroid/content/res/Resources;Landroid/content/ComponentName;I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyboardGlyphManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadGlyphMapDataList()Ljava/util/List;
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.input.action.QUERY_KEYBOARD_GLYPH_MAPS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0xc0080

    const/4 v4, 0x0

    .line 145
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/android/server/input/KeyboardGlyphManager;->getKeyboardGlyphMapsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 153
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final loadGlyphMapFromResource(Landroid/content/res/Resources;Landroid/content/ComponentName;I)Landroid/hardware/input/KeyGlyphMap;
    .locals 9

    .line 233
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 234
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 235
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 238
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p3

    .line 239
    const-string v0, "keyboard-glyph-map"

    invoke-static {p3, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 242
    :goto_0
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 243
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_c

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "key-glyph"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b

    :sswitch_1
    const-string v1, "function-row-key"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_2

    :sswitch_2
    const-string/jumbo v1, "modifier-glyph"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_2

    :sswitch_3
    const-string v1, "hardware-defined-shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_8

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_4

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 289
    :cond_2
    sget-object v0, Lcom/android/internal/R$styleable;->HardwareDefinedShortcut:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :try_start_1
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 294
    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 296
    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    .line 300
    new-instance v7, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    invoke-direct {v7, v4, v0}, Landroid/hardware/input/KeyGlyphMap$KeyCombination;-><init>(II)V

    .line 302
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 300
    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 305
    :cond_3
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :goto_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 306
    throw p1

    .line 277
    :cond_4
    sget-object v0, Lcom/android/internal/R$styleable;->FunctionRowKey:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    :try_start_3
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_6

    .line 285
    :cond_5
    :goto_5
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :goto_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    throw p1

    .line 262
    :cond_6
    sget-object v0, Lcom/android/internal/R$styleable;->ModifierGlyph:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 265
    :try_start_5
    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 266
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 270
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_8

    .line 273
    :cond_7
    :goto_7
    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :goto_8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    throw p1

    .line 249
    :cond_8
    sget-object v0, Lcom/android/internal/R$styleable;->KeyGlyph:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 252
    :try_start_7
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 253
    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    .line 255
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_a

    .line 258
    :cond_9
    :goto_9
    :try_start_8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :goto_a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    throw p1
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 311
    :goto_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse key glyph map : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyboardGlyphManager"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_c
    new-instance v0, Landroid/hardware/input/KeyGlyphMap;

    .line 314
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/input/KeyGlyphMap;-><init>(Landroid/content/ComponentName;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;[ILjava/util/Map;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x713b9731 -> :sswitch_3
        -0x5435454a -> :sswitch_2
        0x124ef7 -> :sswitch_1
        0x47eb903e -> :sswitch_0
    .end sparse-switch
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetMaps()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 134
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    .line 135
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public systemRunning()V
    .locals 4

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/KeyboardGlyphManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/input/KeyboardGlyphManager$1;-><init>(Lcom/android/server/input/KeyboardGlyphManager;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
