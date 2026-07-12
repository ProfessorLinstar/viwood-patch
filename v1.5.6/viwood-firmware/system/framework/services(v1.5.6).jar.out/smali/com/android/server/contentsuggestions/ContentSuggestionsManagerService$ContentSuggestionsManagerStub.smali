.class public Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;
.super Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;
.source "ContentSuggestionsManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-direct {p0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V

    return-void
.end method


# virtual methods
.method public classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "classifyContentSelections"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$600(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$700(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {p0, p2, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->classifyContentSelectionsLocked(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 215
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

.method public isEnabled(ILcom/android/internal/os/IResultReceiver;)V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "isEnabled"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$1000(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$1100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Z

    move-result p0

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    const/4 p1, 0x0

    .line 244
    invoke-interface {p2, p0, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 243
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "notifyInteraction"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$800(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$900(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0, p2, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->notifyInteractionLocked(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 232
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

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Expected shell caller"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_0
    new-instance v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 276
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "provideContextBitmap"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$000(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    if-eqz p0, :cond_0

    .line 138
    const-string p1, "android.contentsuggestions.extra.BITMAP"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    invoke-virtual {p0, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->provideContextImageFromBitmapLocked(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 130
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected non-null imageContextRequestExtras"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected non-null bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public provideContextImage(IILandroid/os/Bundle;)V
    .locals 3

    if-eqz p3, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "provideContextImage"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 161
    const-string v0, "android.contentsuggestions.extra.BITMAP"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTaskSnapshotBlocking(IZI)Landroid/window/TaskSnapshot;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$200(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$300(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    if-eqz p0, :cond_1

    .line 171
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->provideContextImageLocked(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 177
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 155
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected non-null imageContextRequestExtras"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetTemporaryService(I)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    return-void
.end method

.method public setDefaultServiceEnabled(IZ)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    return-void
.end method

.method public suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "suggestContentSelections"

    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$400(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-static {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->access$500(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0, p2, p3}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->suggestContentSelectionsLocked(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 196
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
