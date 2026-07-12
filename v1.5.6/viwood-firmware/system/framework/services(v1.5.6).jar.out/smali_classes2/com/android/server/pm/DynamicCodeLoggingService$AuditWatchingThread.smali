.class public Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;
.super Ljava/lang/Thread;
.source "DynamicCodeLoggingService.java"


# instance fields
.field public final mParams:Landroid/app/job/JobParameters;

.field public final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 202
    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 203
    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final processAuditEvents()Z
    .locals 9

    const/4 v0, 0x1

    .line 253
    :try_start_0
    const-string v1, "auditd"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 254
    aget v3, v1, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return v0

    .line 260
    :cond_0
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$smgetDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v3

    .line 262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-static {v1, v4}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 264
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetEXECUTE_NATIVE_AUDIT_PATTERN()Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    move v5, v2

    .line 265
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 266
    iget-object v6, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$fgetmAuditWatchingStopRequested(Lcom/android/server/pm/DynamicCodeLoggingService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Stopping AuditWatchingJob run at scheduler request"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    goto :goto_2

    .line 271
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/EventLog$Event;

    .line 274
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getUid()I

    move-result v7

    .line 275
    invoke-static {v7}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v6

    .line 279
    instance-of v8, v6, Ljava/lang/String;

    if-nez v8, :cond_3

    goto :goto_1

    .line 282
    :cond_3
    check-cast v6, Ljava/lang/String;

    .line 283
    const-string/jumbo v8, "type=1400 "

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 291
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 292
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 295
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    const/4 v6, 0x2

    .line 299
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$smunhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    :cond_6
    invoke-virtual {v3, v7, v6}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordNative(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    return v0

    .line 306
    :goto_2
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuditWatchingJob failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public run()V
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->processAuditEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object p0, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method
