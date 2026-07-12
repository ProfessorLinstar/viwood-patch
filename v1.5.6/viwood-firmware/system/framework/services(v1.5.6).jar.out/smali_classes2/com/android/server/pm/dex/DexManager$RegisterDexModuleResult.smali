.class public Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
.super Ljava/lang/Object;
.source "DexManager.java"


# instance fields
.field public final message:Ljava/lang/String;

.field public final success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-boolean p1, p0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->success:Z

    .line 698
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->message:Ljava/lang/String;

    return-void
.end method
