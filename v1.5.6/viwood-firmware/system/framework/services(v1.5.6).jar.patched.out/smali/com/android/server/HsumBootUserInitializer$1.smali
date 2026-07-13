.class public Lcom/android/server/HsumBootUserInitializer$1;
.super Landroid/database/ContentObserver;
.source "HsumBootUserInitializer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HsumBootUserInitializer;


# direct methods
.method public constructor <init>(Lcom/android/server/HsumBootUserInitializer;Landroid/os/Handler;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    invoke-static {p1}, Lcom/android/server/HsumBootUserInitializer;->-$$Nest$misDeviceProvisioned(Lcom/android/server/HsumBootUserInitializer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Lcom/android/server/HsumBootUserInitializer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Marking USER_SETUP_COMPLETE for system user"

    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p1, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    invoke-static {p1}, Lcom/android/server/HsumBootUserInitializer;->-$$Nest$fgetmContentResolver(Lcom/android/server/HsumBootUserInitializer;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    iget-object p1, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    invoke-static {p1}, Lcom/android/server/HsumBootUserInitializer;->-$$Nest$fgetmContentResolver(Lcom/android/server/HsumBootUserInitializer;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    invoke-static {p0}, Lcom/android/server/HsumBootUserInitializer;->-$$Nest$fgetmDeviceProvisionedObserver(Lcom/android/server/HsumBootUserInitializer;)Landroid/database/ContentObserver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
