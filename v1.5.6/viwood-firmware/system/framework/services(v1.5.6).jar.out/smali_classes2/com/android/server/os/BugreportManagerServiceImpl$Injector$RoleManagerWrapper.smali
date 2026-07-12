.class public Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;
.super Ljava/lang/Object;
.source "BugreportManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRoleHolders(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 413
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, p1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
