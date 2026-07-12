.class public Lcom/android/server/pm/PackageInstallerSession$5;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 917
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 951
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleOnNativeLibsExtracted(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_1

    .line 948
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandlePreapprovalRequest(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_1

    .line 943
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 944
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 945
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$monSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_1

    .line 928
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 929
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 930
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 931
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 932
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/IntentSender;

    .line 933
    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 934
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v0, v1, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v9, v0

    .line 935
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 937
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 938
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$misInstallerDeviceOwnerOrAffiliatedProfileOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v5

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 937
    invoke-static/range {v2 .. v11}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 925
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleInstall(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_1

    .line 922
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleStreamValidateAndCommit(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_1

    .line 919
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
