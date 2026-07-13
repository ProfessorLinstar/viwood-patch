.class public final Lcom/android/server/power/ShutdownCheckPoints;
.super Ljava/lang/Object;
.source "ShutdownCheckPoints.java"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field public static final INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;


# instance fields
.field public final mCheckPoints:Ljava/util/ArrayList;

.field public final mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetEMPTY_FILE_ARRAY()[Ljava/io/File;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownCheckPoints;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownCheckPoints$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    return-void
.end method

.method public static newDumpThread(Ljava/io/File;)Ljava/lang/Thread;
    .locals 1

    .line 119
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static recordCheckPoint(ILjava/lang/String;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    monitor-enter v0

    .line 158
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;

    .line 161
    iget-object v4, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->dump(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V

    .line 162
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 159
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;
    .locals 2

    .line 168
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->maxDumpFiles()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;-><init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V

    return-object v0
.end method

.method public recordCheckPointInternal(ILjava/lang/String;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 132
    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    invoke-direct {v2, v0, v1, p2}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;-><init>(JILjava/lang/String;)V

    .line 131
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Binder shutdown checkpoint recorded with pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShutdownCheckPoints"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->maxCheckPoints()I

    move-result v1

    if-le p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 151
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public recordCheckPointInternal(Ljava/lang/String;)V
    .locals 3

    .line 124
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 125
    const-string p0, "ShutdownCheckPoints"

    const-string p1, "System server shutdown checkpoint recorded"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    invoke-direct {v0, v2, v3, p3}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    move-object v4, p1

    move-object v5, p2

    goto :goto_0

    .line 142
    :cond_0
    new-instance v1, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 143
    const-string p0, "Shutdown intent checkpoint recorded intent=%s from package=%s"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShutdownCheckPoints"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
