.class public final Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mSciId:Ljava/lang/String;

.field public final mSpellCheckerBindGroups:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSciId(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    .line 995
    iput-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1001
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1002
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1010
    invoke-static {p2}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object p1

    .line 1012
    iget-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    if-eqz p2, :cond_0

    .line 1013
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->-$$Nest$fgetmInternalConnection(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 1014
    invoke-virtual {p2, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1021
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V

    .line 1022
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V
    .locals 1

    .line 1029
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    if-eqz p1, :cond_0

    .line 1030
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->-$$Nest$fgetmInternalConnection(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 1031
    invoke-virtual {p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->onServiceDisconnectedLocked()V

    :cond_0
    return-void
.end method
