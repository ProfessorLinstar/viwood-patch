.class public Lcom/android/server/autofill/FieldClassificationStrategy$1;
.super Ljava/lang/Object;
.source "FieldClassificationStrategy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/FieldClassificationStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/FieldClassificationStrategy;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 199
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindingDied(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-static {p1}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fgetmLock(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fputmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)V

    .line 202
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 207
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNullBinding(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-static {p1}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fgetmLock(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 209
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fputmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)V

    .line 210
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 167
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-static {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fgetmLock(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 170
    invoke-static {p2}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutofillFieldClassificationService;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fputmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)V

    .line 171
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-static {p2}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fgetmQueuedCommands(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 172
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-static {p2}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fgetmQueuedCommands(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 173
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "FieldClassificationStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queued commands"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-static {v2}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fgetmQueuedCommands(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2

    const-string v3, "FieldClassificationStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "running queued command #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_3

    .line 178
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-static {v3}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fgetmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;)Landroid/service/autofill/IAutofillFieldClassificationService;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/autofill/FieldClassificationStrategy$Command;->run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 180
    :goto_3
    :try_start_2
    const-string v3, "FieldClassificationStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_3
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fputmQueuedCommands(Lcom/android/server/autofill/FieldClassificationStrategy;Ljava/util/ArrayList;)V

    goto :goto_5

    .line 184
    :cond_4
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_5

    const-string p0, "FieldClassificationStrategy"

    const-string/jumbo p1, "no queued commands"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_5
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 191
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-static {p1}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fgetmLock(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 193
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->-$$Nest$fputmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)V

    .line 194
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
