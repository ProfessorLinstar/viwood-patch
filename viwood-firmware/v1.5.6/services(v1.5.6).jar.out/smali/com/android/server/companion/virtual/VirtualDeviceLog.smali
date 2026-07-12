.class public final Lcom/android/server/companion/virtual/VirtualDeviceLog;
.super Ljava/lang/Object;
.source "VirtualDeviceLog.java"


# static fields
.field public static final DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

.field public static TYPE_CLOSED:I = 0x1

.field public static TYPE_CREATED:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLogEntries:Ljava/util/ArrayDeque;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 36
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    .line 45
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addEntry(Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 v0, 0x10

    if-le p1, v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 76
    :try_start_0
    const-string v2, "VirtualDevice Log:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;-><init>(Landroid/content/pm/PackageManager;)V

    .line 79
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;

    .line 80
    const-string v4, "  "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 84
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw p0
.end method

.method public logClosed(II)V
    .locals 9

    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 60
    :try_start_0
    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;

    sget v4, Lcom/android/server/companion/virtual/VirtualDeviceLog;->TYPE_CLOSED:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v5, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;-><init>(IIJI)V

    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->addEntry(Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public logCreated(II)V
    .locals 9

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 51
    :try_start_0
    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;

    sget v4, Lcom/android/server/companion/virtual/VirtualDeviceLog;->TYPE_CREATED:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v5, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;-><init>(IIJI)V

    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->addEntry(Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    throw p0
.end method
