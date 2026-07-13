.class public final Lcom/android/server/permission/access/AccessPersistence;
.super Ljava/lang/Object;
.source "AccessPersistence.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/AccessPersistence$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final pendingMutationTimesMillis:Landroid/util/SparseLongArray;

.field public final pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

.field public final policy:Lcom/android/server/permission/access/AccessPolicy;

.field public final scheduleLock:Ljava/lang/Object;

.field public writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

.field public final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/AccessPersistence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/AccessPersistence$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/AccessPersistence;->Companion:Lcom/android/server/permission/access/AccessPersistence$Companion;

    .line 179
    const-class v0, Lcom/android/server/permission/access/AccessPersistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessPolicy;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    .line 43
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 44
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 47
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$writePendingState(Lcom/android/server/permission/access/AccessPersistence;I)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPersistence;->writePendingState(I)V

    return-void
.end method


# virtual methods
.method public final getSystemFile()Ljava/io/File;
    .locals 2

    .line 173
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/server/permission/access/util/PermissionApex;->INSTANCE:Lcom/android/server/permission/access/util/PermissionApex;

    invoke-virtual {v0}, Lcom/android/server/permission/access/util/PermissionApex;->getSystemDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "access.abx"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUserFile(I)Ljava/io/File;
    .locals 1

    .line 176
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/server/permission/access/util/PermissionApex;->INSTANCE:Lcom/android/server/permission/access/util/PermissionApex;

    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/util/PermissionApex;->getUserDataDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "access.abx"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initialize()V
    .locals 2

    .line 50
    new-instance v0, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;-><init>(Lcom/android/server/permission/access/AccessPersistence;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    return-void
.end method

.method public final read(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 4

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPersistence;->readSystemState(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v3

    .line 58
    invoke-virtual {p0, p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->readUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final readSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 9

    .line 63
    const-string v0, "AccessPersistence"

    const-string v1, "Failed to read "

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessPersistence;->getSystemFile()Ljava/io/File;

    move-result-object v2

    .line 91
    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v4, 0x0

    .line 33
    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    :try_start_2
    new-instance v6, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v6}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 29
    invoke-virtual {v6, v5, v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    iget-object v7, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v7, v6, p1}, Lcom/android/server/permission/access/AccessPolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 91
    sget-object v6, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    invoke-static {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v7

    :try_start_5
    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 37
    :goto_0
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".reservecopy"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 40
    :try_start_7
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 28
    :try_start_8
    new-instance v7, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v7}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 29
    invoke-virtual {v7, v3, v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    iget-object v8, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v8, v7, p1}, Lcom/android/server/permission/access/AccessPolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 91
    sget-object v7, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 40
    :try_start_9
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v7

    :try_start_b
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 42
    :goto_1
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    throw v5

    :catch_3
    move-exception p0

    goto :goto_3

    .line 35
    :goto_2
    throw v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 97
    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 94
    :catch_4
    sget-object v0, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/AccessPolicy;->migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 71
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V

    :goto_4
    return-void
.end method

.method public final readUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 9

    .line 77
    const-string v0, "AccessPersistence"

    const-string v1, "Failed to read "

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/AccessPersistence;->getUserFile(I)Ljava/io/File;

    move-result-object v2

    .line 91
    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v4, 0x0

    .line 33
    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    :try_start_2
    new-instance v6, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v6}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 29
    invoke-virtual {v6, v5, v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    iget-object v7, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v7, v6, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 91
    sget-object v6, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    invoke-static {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v7

    :try_start_5
    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 37
    :goto_0
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".reservecopy"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 40
    :try_start_7
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 28
    :try_start_8
    new-instance v7, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v7}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 29
    invoke-virtual {v7, v3, v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    iget-object v8, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v8, v7, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 91
    sget-object v7, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 40
    :try_start_9
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v7

    :try_start_b
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 42
    :goto_1
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    throw v5

    :catch_3
    move-exception p0

    goto :goto_3

    .line 35
    :goto_2
    throw v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 97
    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 94
    :catch_4
    sget-object v0, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 81
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/WritableState;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V

    :goto_4
    return-void
.end method

.method public final write(Lcom/android/server/permission/access/AccessState;)V
    .locals 5

    .line 101
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V

    .line 102
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/UserState;

    .line 102
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V
    .locals 8

    .line 106
    invoke-interface {p1}, Lcom/android/server/permission/access/WritableState;->getWriteMode()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-static {v0, p3, p2}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    sget-object p2, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 131
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/AccessPersistence;->writePendingState(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 130
    monitor-exit p1

    throw p0

    .line 131
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 133
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string/jumbo v0, "writeHandler"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-static {v0, p3, p2}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 115
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 52
    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 54
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {p2, p3, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v4, v2

    :goto_1
    sub-long/2addr v2, v4

    .line 117
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-nez p2, :cond_4

    const-string/jumbo p2, "writeHandler"

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_4
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v4, 0x7d0

    cmp-long p3, v2, v4

    if-lez p3, :cond_5

    .line 119
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    goto :goto_3

    :cond_5
    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v2

    .line 122
    invoke-static {v6, v7, v4, v5}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(JJ)J

    move-result-wide v2

    .line 125
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-nez p0, :cond_6

    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p0

    :goto_2
    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1

    throw p0

    :cond_7
    return-void
.end method

.method public final writePendingState(I)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    new-instance v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 65
    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 142
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-virtual {v3, p1}, Lcom/android/server/permission/access/immutable/MutableIntMap;->remove(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 143
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-nez v3, :cond_0

    const-string/jumbo v3, "writeHandler"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    sget-object v3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    monitor-exit v2

    .line 145
    iget-object v1, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_1

    .line 146
    monitor-exit v0

    return-void

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 149
    :try_start_3
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/AccessPersistence;->writeSystemState(Lcom/android/server/permission/access/AccessState;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 151
    :cond_2
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/permission/access/AccessPersistence;->writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    :goto_1
    monitor-exit v0

    return-void

    .line 140
    :goto_2
    :try_start_4
    monitor-exit v2

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final writeSystemState(Lcom/android/server/permission/access/AccessState;)V
    .locals 7

    .line 157
    const-string v0, "AccessPersistence"

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessPersistence;->getSystemFile()Ljava/io/File;

    move-result-object v1

    .line 166
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 76
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    :try_start_1
    new-instance v4, Lcom/android/modules/utils/BinaryXmlSerializer;

    invoke-direct {v4}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    const/4 v5, 0x0

    .line 27
    invoke-virtual {v4, v3, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 157
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/permission/access/AccessPolicy;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    .line 42
    invoke-virtual {v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->endDocument()V

    .line 79
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 84
    :try_start_2
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 76
    :try_start_3
    invoke-static {v3, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    new-instance p0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".reservecopy"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    :try_start_4
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    :try_start_6
    invoke-static {p1, v3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 58
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 56
    :try_start_7
    invoke-static {v3, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 55
    :try_start_8
    invoke-static {p1, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v4

    .line 56
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v5

    :try_start_a
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 55
    :goto_0
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_c
    invoke-static {p1, v3}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 62
    :goto_1
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 65
    :goto_2
    :try_start_e
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V

    .line 66
    invoke-static {p0}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 68
    :try_start_f
    const-string p1, "Failed to verity-protect runtime-permissions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_4

    :catchall_4
    move-exception p0

    goto :goto_3

    :catchall_5
    move-exception p0

    .line 81
    :try_start_10
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 82
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 76
    :goto_3
    :try_start_11
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_12
    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 168
    :goto_4
    sget-object p1, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to serialize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public final writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    .locals 7

    .line 161
    const-string v0, "AccessPersistence"

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/AccessPersistence;->getUserFile(I)Ljava/io/File;

    move-result-object v1

    .line 166
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 76
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    :try_start_1
    new-instance v4, Lcom/android/modules/utils/BinaryXmlSerializer;

    invoke-direct {v4}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    const/4 v5, 0x0

    .line 27
    invoke-virtual {v4, v3, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    .line 42
    invoke-virtual {v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->endDocument()V

    .line 79
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 84
    :try_start_2
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 76
    :try_start_3
    invoke-static {v3, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    new-instance p0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".reservecopy"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    :try_start_4
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    :try_start_5
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    :try_start_6
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 58
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 56
    :try_start_7
    invoke-static {p2, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 55
    :try_start_8
    invoke-static {p1, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception v3

    .line 56
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v4

    :try_start_a
    invoke-static {p2, v3}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 55
    :goto_0
    :try_start_b
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_c
    invoke-static {p1, p2}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 62
    :goto_1
    :try_start_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 65
    :goto_2
    :try_start_e
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V

    .line 66
    invoke-static {p0}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 68
    :try_start_f
    const-string p1, "Failed to verity-protect runtime-permissions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_4

    :catchall_4
    move-exception p0

    goto :goto_3

    :catchall_5
    move-exception p0

    .line 81
    :try_start_10
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 82
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 76
    :goto_3
    :try_start_11
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_12
    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 168
    :goto_4
    sget-object p1, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to serialize "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method
