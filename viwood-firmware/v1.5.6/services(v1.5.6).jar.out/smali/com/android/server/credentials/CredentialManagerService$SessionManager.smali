.class public Lcom/android/server/credentials/CredentialManagerService$SessionManager;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"

# interfaces
.implements Lcom/android/server/credentials/RequestSession$SessionLifetime;


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/CredentialManagerService;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/CredentialManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/credentials/CredentialManagerService$SessionManager;-><init>(Lcom/android/server/credentials/CredentialManagerService;)V

    return-void
.end method


# virtual methods
.method public addSession(ILandroid/os/IBinder;Lcom/android/server/credentials/RequestSession;)V
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmRequestSessions(Lcom/android/server/credentials/CredentialManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmRequestSessions(Lcom/android/server/credentials/CredentialManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1202
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmRequestSessions(Lcom/android/server/credentials/CredentialManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onFinishRequestSession(ILandroid/os/IBinder;)V
    .locals 1

    .line 1192
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmRequestSessions(Lcom/android/server/credentials/CredentialManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmRequestSessions(Lcom/android/server/credentials/CredentialManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
