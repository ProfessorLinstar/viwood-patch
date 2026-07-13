.class public Lcom/android/server/ENoteSettingService$1;
.super Landroid/os/AsyncTask;
.source "ENoteSettingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ENoteSettingService;

.field public final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field public final synthetic val$wipeSafeStorage:Z


# direct methods
.method public constructor <init>(Lcom/android/server/ENoteSettingService;Landroid/service/persistentdata/PersistentDataBlockManager;Z)V
    .locals 0

    .line 1212
    iput-object p1, p0, Lcom/android/server/ENoteSettingService$1;->this$0:Lcom/android/server/ENoteSettingService;

    iput-object p2, p0, Lcom/android/server/ENoteSettingService$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-boolean p3, p0, Lcom/android/server/ENoteSettingService$1;->val$wipeSafeStorage:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1212
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/ENoteSettingService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 1215
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1212
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/ENoteSettingService$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 1221
    iget-object p1, p0, Lcom/android/server/ENoteSettingService$1;->this$0:Lcom/android/server/ENoteSettingService;

    invoke-static {p1}, Lcom/android/server/ENoteSettingService;->-$$Nest$fgetmContext(Lcom/android/server/ENoteSettingService;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1222
    iget-object p1, p0, Lcom/android/server/ENoteSettingService$1;->this$0:Lcom/android/server/ENoteSettingService;

    iget-boolean p0, p0, Lcom/android/server/ENoteSettingService$1;->val$wipeSafeStorage:Z

    invoke-static {p1, p0}, Lcom/android/server/ENoteSettingService;->-$$Nest$mdoMainClear(Lcom/android/server/ENoteSettingService;Z)V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .line 0
    return-void
.end method
