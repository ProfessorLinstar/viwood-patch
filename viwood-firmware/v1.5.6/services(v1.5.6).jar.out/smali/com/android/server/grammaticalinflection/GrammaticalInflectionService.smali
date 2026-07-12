.class public Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;
.super Lcom/android/server/SystemService;
.source "GrammaticalInflectionService.java"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

.field public mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

.field public mContext:Landroid/content/Context;

.field public final mGrammaticalGenderCache:Landroid/util/SparseIntArray;

.field public final mLock:Ljava/lang/Object;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionManager:Landroid/permission/PermissionManager;


# direct methods
.method public static synthetic $r8$lambda$sWnJ5Api2DUCiEAZO1zYUXFfRbI(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->lambda$onUserUnlocked$0(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupHelper(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderService(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionManager(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Landroid/permission/PermissionManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcanGetSystemGrammaticalGender(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Landroid/content/AttributionSource;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->canGetSystemGrammaticalGender(Landroid/content/AttributionSource;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->enforceCallerPermissions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcheckSystemTermsOfAddressIsEnabled()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    .line 105
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    .line 106
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 107
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 108
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;-><init>(Landroid/content/AttributionSource;Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    .line 110
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Lcom/android/server/grammaticalinflection/GrammaticalInflectionService-IA;)V

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    .line 111
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/permission/PermissionManager;

    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    return-void
.end method

.method public static checkSystemTermsOfAddressIsEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method private enforceCallerPermissions()V
    .locals 2

    .line 389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 392
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CHANGE_CONFIGURATION"

    const-string v1, "Caller must be system, shell, root or hold CHANGE_CONFIGURATION permission."

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getGrammaticalGenderFile(I)Ljava/io/File;
    .locals 2

    .line 355
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "grammatical_inflection"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "user_settings.xml"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getGrammaticalGenderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)I
    .locals 2

    .line 375
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 376
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 377
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, "grammatical_inflection"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 379
    const-string v1, "grammatical_gender"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 381
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toXmlByteArray(ILjava/io/FileOutputStream;)[B
    .locals 4

    .line 362
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    .line 364
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 365
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 366
    const-string v1, "grammatical_inflection"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string v3, "grammatical_gender"

    invoke-interface {p1, v2, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 370
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static updateConfiguration(II)V
    .locals 3

    .line 327
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 328
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getGrammaticalGender()I

    move-result v1

    .line 329
    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setGrammaticalGender(I)V

    .line 330
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    const/16 v1, 0x330

    .line 331
    invoke-static {v1, v2, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZ)V

    .line 336
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->notifyBackupManager()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 338
    const-string p1, "GrammaticalInflection"

    const-string v0, "Can not update configuration"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final canGetSystemGrammaticalGender(Landroid/content/AttributionSource;)Z
    .locals 1

    .line 407
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-static {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionUtils;->checkSystemGrammaticalGenderPermission(Landroid/permission/PermissionManager;Landroid/content/AttributionSource;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getApplicationGrammaticalGender(Ljava/lang/String;I)I
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getApplicationConfig(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 232
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mGrammaticalGender:Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSystemGrammaticalGender(I)I
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 350
    :cond_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 351
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onUserUnlocked$0(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    .line 417
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 418
    invoke-static {p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getGrammaticalGenderFile(I)Ljava/io/File;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    const-string p0, "GrammaticalInflection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have the grammatical gender file."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 426
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 428
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :try_start_2
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 430
    invoke-static {v3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getGrammaticalGenderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v3

    .line 431
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 432
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 437
    invoke-static {v3, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->updateConfiguration(II)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 428
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 433
    :goto_1
    :try_start_7
    const-string p1, "GrammaticalInflection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse XML configuration from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    monitor-exit v1

    return-void

    .line 436
    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public onStart()V
    .locals 2

    .line 116
    const-string v0, "grammatical_inflection"

    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 117
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Lcom/android/server/grammaticalinflection/GrammaticalInflectionService-IA;)V

    const-class p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 413
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    .locals 7

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getApplicationGrammaticalGender(Ljava/lang/String;I)I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 243
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v1

    .line 246
    const-string v2, "i18n.grammatical_Inflection.enabled"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    .line 248
    const-string p0, "GrammaticalInflection"

    const-string p1, "Clearing the user\'s grammatical gender setting"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-interface {v1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setGrammaticalGender(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object p0

    .line 250
    invoke-interface {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    :cond_0
    return-void

    .line 255
    :cond_1
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v5, 0x0

    invoke-virtual {p0, p1, v5, v6, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-eqz p3, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v4

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    const/16 p2, 0x248

    const/4 v0, 0x2

    .line 256
    invoke-static {p2, v0, p0, p1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZ)V

    .line 262
    invoke-interface {v1, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setGrammaticalGender(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    return-void
.end method

.method public setSystemWideGrammaticalGender(II)V
    .locals 4

    .line 267
    :try_start_0
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 321
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 271
    :cond_0
    :try_start_1
    const-string v0, "GrammaticalInflectionService.setSystemWideGrammaticalGender"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 272
    sget-object v0, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 272
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 288
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v2, :cond_1

    .line 298
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 290
    :cond_1
    :try_start_4
    const-string p0, "GrammaticalInflection"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only current user is allowed to update GrammaticalInflection if visible background users are enabled. Current User"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Calling User: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only current user is allowed to update GrammaticalInflection."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    .line 298
    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw p0

    .line 302
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getGrammaticalGenderFile(I)Ljava/io/File;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 304
    :try_start_6
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 307
    :try_start_7
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 308
    :try_start_8
    invoke-static {p1, v0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->toXmlByteArray(ILjava/io/FileOutputStream;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 309
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 310
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 318
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 319
    :try_start_a
    invoke-static {p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->updateConfiguration(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 321
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    const/4 v0, 0x0

    .line 312
    :goto_1
    :try_start_b
    const-string p1, "GrammaticalInflection"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write file "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 316
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 318
    :goto_2
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw p0

    .line 274
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown grammatical gender"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p0

    .line 321
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 322
    throw p0
.end method
