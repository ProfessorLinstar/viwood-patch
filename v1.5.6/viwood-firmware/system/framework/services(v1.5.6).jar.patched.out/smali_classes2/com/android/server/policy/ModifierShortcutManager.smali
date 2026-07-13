.class public Lcom/android/server/policy/ModifierShortcutManager;
.super Ljava/lang/Object;
.source "ModifierShortcutManager.java"


# static fields
.field public static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

.field public static sApplicationLaunchKeyRoles:Landroid/util/SparseArray;


# instance fields
.field public final mAppIntentCache:Ljava/util/Map;

.field public final mBookmarks:Ljava/util/Map;

.field public final mCategoryShortcuts:Landroid/util/SparseArray;

.field public final mComponentIntents:Ljava/util/Map;

.field public final mComponentShortcuts:Landroid/util/SparseArray;

.field public mConsumeSearchKeyUp:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:Landroid/os/UserHandle;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mRoleIntents:Ljava/util/Map;

.field public final mRoleShortcuts:Landroid/util/SparseArray;

.field public mSearchKeyShortcutPending:Z

.field public final mShiftCategoryShortcuts:Landroid/util/SparseArray;

.field public final mShiftComponentShortcuts:Landroid/util/SparseArray;

.field public final mShiftRoleShortcuts:Landroid/util/SparseArray;

.field public mShortcutKeyServices:Landroid/util/LongSparseArray;


# direct methods
.method public static synthetic $r8$lambda$W3KmBtds13Ht6vpLq2KKi1MBK-4(Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 0

    .line 204
    instance-of p0, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;

    return p0
.end method

.method public static synthetic $r8$lambda$Zs6QXZ1A7pXQwLZywmqj70CJfuk(Ljava/lang/String;Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 1

    .line 153
    instance-of v0, p1, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    .line 154
    invoke-virtual {p1}, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->getRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$dqMV3scjH96xksCoywDgcrJhNwk(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 162
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {p1}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ksD7kk_KZ17ryxi7p3UXzaqQ4wk(Lcom/android/server/policy/ModifierShortcutManager;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager;->lambda$new$2(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCRuhzp6F_m4uFOcyvutHe8EaOc(Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 0

    .line 195
    instance-of p0, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smresolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager;->resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 117
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.app.role.BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCategoryShortcuts:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftCategoryShortcuts:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleShortcuts:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftRoleShortcuts:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mComponentShortcuts:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftComponentShortcuts:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mComponentIntents:Ljava/util/Map;

    .line 104
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    .line 146
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mHandler:Landroid/os/Handler;

    .line 148
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/role/RoleManager;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/ModifierShortcutManager;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 171
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    .line 172
    const-class p1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    return-void
.end method

.method public static getIntentCategoryLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 915
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "android.intent.category.APP_MAPS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 941
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No label for app category "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModifierShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const p1, 0x1040542

    goto :goto_1

    :pswitch_1
    const p1, 0x1040541

    goto :goto_1

    :pswitch_2
    const p1, 0x1040546

    goto :goto_1

    :pswitch_3
    const p1, 0x1040544

    goto :goto_1

    :pswitch_4
    const p1, 0x1040543

    goto :goto_1

    :pswitch_5
    const p1, 0x1040547

    goto :goto_1

    :pswitch_6
    const p1, 0x1040540

    goto :goto_1

    :pswitch_7
    const p1, 0x1040545

    .line 944
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae0672e -> :sswitch_7
        -0x70f45113 -> :sswitch_6
        -0x20da2677 -> :sswitch_5
        0x19b1550e -> :sswitch_4
        0x1e6800a1 -> :sswitch_3
        0x1edca32a -> :sswitch_2
        0x267d18fd -> :sswitch_1
        0x30e2eff9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 303
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 305
    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ModifierShortcutManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->getDefaultApplication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 310
    const-string v0, "com.android.server.policy.ModifierShortcutManager.EXTRA_ROLE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No launch intent for role "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No default application for role "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " user="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 320
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Role "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 514
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x40000

    .line 516
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 520
    new-instance v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-direct {v2, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :try_start_1
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 529
    :goto_0
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    .line 524
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to add bookmark: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModifierShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clearComponentIntents()V
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda2;-><init>()V

    .line 204
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public clearRoleIntents()V
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda2;-><init>()V

    .line 195
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    .line 1038
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string p1, "ModifierShortcutManager shortcuts:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1042
    iget-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    .line 1043
    invoke-virtual {p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->isShift()Z

    move-result v1

    .line 1044
    invoke-virtual {p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->getShortcutChar()C

    move-result v2

    .line 1046
    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    .line 1048
    invoke-virtual {p2, v3}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    if-eqz v1, :cond_0

    .line 1049
    const-string v3, "SHIFT+"

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1052
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1053
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/policy/ModifierShortcutManager;->shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolves to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1057
    :cond_1
    const-string p2, "<No KeyboardShortcutInfo available for this shortcut>"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    :goto_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1060
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getApplicationLaunchKeyboardShortcuts(ILjava/util/List;)Landroid/view/KeyboardShortcutGroup;
    .locals 5

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p1

    .line 809
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    .line 810
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    instance-of v3, v2, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 812
    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v3

    .line 813
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;

    move-result-object v1

    .line 814
    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getModifierState()I

    move-result v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 811
    :goto_1
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/policy/ModifierShortcutManager;->shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 816
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 820
    :cond_2
    new-instance p1, Landroid/view/KeyboardShortcutGroup;

    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    const p2, 0x104053f

    .line 821
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object p1
.end method

.method public final getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;
    .locals 4

    .line 826
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 827
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter v1

    .line 828
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 830
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 832
    :cond_0
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v3, :cond_1

    .line 833
    const-string v0, "android.intent.action.MAIN"

    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 834
    invoke-virtual {v2}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 835
    :cond_1
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v3, :cond_2

    .line 836
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v2}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 837
    :cond_2
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v3, :cond_3

    .line 838
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 839
    invoke-virtual {v2}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 840
    invoke-virtual {v2}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-static {v0, v3, v2}, Lcom/android/server/policy/ModifierShortcutManager;->resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 843
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_4
    monitor-exit v1

    return-object v2

    .line 846
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$2(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 152
    iget-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda2;-><init>()V

    .line 155
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 159
    iget-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter p2

    .line 160
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 169
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public launchApplication(Landroid/hardware/input/AppLaunchData;)Z
    .locals 3

    .line 850
    invoke-virtual {p0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v2, 0x10000000

    .line 854
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 859
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not launching app because the activity to which it refers to was not found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModifierShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final loadShortcuts()V
    .locals 15

    .line 342
    const-string v0, "ModifierShortcutManager"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 343
    const-string v2, "bookmarks"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 344
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 347
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 349
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto/16 :goto_5

    .line 353
    :cond_1
    const-string v3, "bookmark"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 357
    :cond_2
    const-string/jumbo v3, "package"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    const-string v6, "class"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 359
    const-string/jumbo v7, "shortcut"

    invoke-interface {v1, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 360
    const-string v8, "category"

    invoke-interface {v1, v5, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 361
    const-string/jumbo v9, "shift"

    invoke-interface {v1, v5, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 362
    const-string/jumbo v10, "role"

    invoke-interface {v1, v5, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 365
    iget-object v11, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v12, Lcom/android/internal/R$styleable;->Bookmark:[I

    invoke-virtual {v11, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x0

    .line 368
    :try_start_1
    invoke-virtual {v11, v12, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 369
    invoke-virtual {v11, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :try_start_2
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v13, :cond_3

    .line 376
    invoke-virtual {v2, v13}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 379
    :cond_3
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut required for bookmark with category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " className="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " role="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shiftName="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " keycode= "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " modifierState= "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 389
    const-string/jumbo v4, "true"

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    :cond_5
    and-int/lit8 v9, v14, 0x1

    if-eqz v9, :cond_6

    goto :goto_2

    :cond_6
    move v4, v12

    .line 395
    :goto_2
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v3, :cond_7

    if-eqz v6, :cond_7

    .line 398
    new-instance v5, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;

    invoke-direct {v5, v7, v4, v3, v6}, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;-><init>(CZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_8

    .line 401
    new-instance v5, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;

    invoke-direct {v5, v7, v4, v8}, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;-><init>(CZLjava/lang/String;)V

    goto :goto_3

    :cond_8
    if-eqz v10, :cond_9

    .line 404
    new-instance v5, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    invoke-direct {v5, v7, v4, v10}, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;-><init>(CZLjava/lang/String;)V

    :cond_9
    :goto_3
    if-eqz v5, :cond_0

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding shortcut "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " shift="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " char="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 371
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    throw p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 473
    :goto_4
    const-string v1, "Got exception parsing bookmarks."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/android/server/policy/ModifierShortcutManager;->loadShortcuts()V

    return-void
.end method

.method public setCurrentUser(Landroid/os/UserHandle;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/policy/ModifierShortcutManager;->clearRoleIntents()V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/policy/ModifierShortcutManager;->clearComponentIntents()V

    .line 187
    iget-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter p1

    .line 188
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 189
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 884
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 885
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    .line 890
    :cond_1
    const-class v4, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 894
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 893
    invoke-static {p0, p2}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentCategoryLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    const v0, 0x1080093

    .line 898
    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_0

    .line 901
    :cond_3
    invoke-virtual {v3, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 902
    iget-object p0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 903
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 902
    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    :goto_0
    if-eqz p3, :cond_4

    const v2, 0x10001

    .line 909
    :cond_4
    new-instance p3, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {p3, p2, p0, p1, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;CI)V

    return-object p3
.end method
