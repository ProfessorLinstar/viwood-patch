.class public abstract Lcom/android/server/am/BugReportHandlerUtil;
.super Ljava/lang/Object;
.source "BugReportHandlerUtil.java"


# direct methods
.method public static bridge synthetic -$$Nest$smlaunchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/BugReportHandlerUtil;->launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.BUGREPORT_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x100000

    .line 204
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBugReportHandlerAppResponseReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.GET_BUGREPORT_HANDLER_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x100000

    .line 214
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_bugreport_handler_app"

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 172
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomBugReportHandlerUser(Landroid/content/Context;)I
    .locals 3

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, -0x2710

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 177
    const-string v2, "custom_bugreport_handler_user"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040234

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBugReportHandlerEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110065

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isBugreportWhitelistedApp(Ljava/lang/String;)Z
    .locals 1

    .line 192
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isShellApp(Ljava/lang/String;)Z
    .locals 1

    .line 183
    const-string v0, "com.android.shell"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isValidBugReportHandlerApp(Ljava/lang/String;)Z
    .locals 1

    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/BugReportHandlerUtil;->isBugreportWhitelistedApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launching bug report handler app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.BUGREPORT_REQUESTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 153
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 154
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v2, 0x1

    .line 157
    invoke-virtual {p1, v2}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 160
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const-string v4, "android.permission.DUMP"

    .line 162
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 160
    invoke-virtual {p0, v0, p2, v4, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 164
    :try_start_1
    const-string p1, "Error while trying to launch bugreport handler app."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    throw p0
.end method

.method public static launchBugReportHandlerApp(Landroid/content/Context;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 78
    invoke-static {v0}, Lcom/android/server/am/BugReportHandlerUtil;->isBugReportHandlerEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    return v11

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/android/server/am/BugReportHandlerUtil;->getCustomBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/android/server/am/BugReportHandlerUtil;->isShellApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v11

    .line 87
    :cond_1
    invoke-static {v0}, Lcom/android/server/am/BugReportHandlerUtil;->getCustomBugReportHandlerUser(Landroid/content/Context;)I

    move-result v2

    .line 88
    invoke-static {v1}, Lcom/android/server/am/BugReportHandlerUtil;->isValidBugReportHandlerApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    invoke-static {v0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {v0, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 92
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-static {v0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 103
    invoke-static {v0}, Lcom/android/server/am/BugReportHandlerUtil;->resetCustomBugreportHandlerAppAndUser(Landroid/content/Context;)V

    .line 106
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/android/server/am/BugReportHandlerUtil;->isShellApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v1}, Lcom/android/server/am/BugReportHandlerUtil;->isValidBugReportHandlerApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 107
    invoke-static {v0, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 108
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 112
    :cond_4
    invoke-static {v0, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppResponseReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 113
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_5

    .line 117
    invoke-static {v0, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil;->launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V

    return v12

    .line 121
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting response from bug report handler app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v13, "ActivityManager"

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.intent.action.GET_BUGREPORT_HANDLER_RESPONSE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x1000000

    .line 125
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 131
    :try_start_0
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object v5, v3

    const-string v3, "android.permission.DUMP"

    new-instance v6, Lcom/android/server/am/BugReportHandlerUtil$BugreportHandlerResponseBroadcastReceiver;

    invoke-direct {v6, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil$BugreportHandlerResponseBroadcastReceiver;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v4

    const/4 v4, -0x1

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 130
    invoke-virtual/range {v0 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 140
    :try_start_1
    const-string v1, "Error while trying to get response from bug report handler app."

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    throw v0

    :cond_6
    :goto_2
    return v11
.end method

.method public static resetCustomBugreportHandlerAppAndUser(Landroid/content/Context;)V
    .locals 5

    .line 224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_bugreport_handler_app"

    .line 228
    invoke-static {p0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_bugreport_handler_user"

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 229
    invoke-static {v2, v3, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    throw p0
.end method
