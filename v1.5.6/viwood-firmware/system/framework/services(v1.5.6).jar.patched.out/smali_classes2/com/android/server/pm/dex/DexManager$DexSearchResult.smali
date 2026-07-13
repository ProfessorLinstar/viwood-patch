.class public Lcom/android/server/pm/dex/DexManager$DexSearchResult;
.super Ljava/lang/Object;
.source "DexManager.java"


# instance fields
.field public final mOutcome:I

.field public final mOwningPackageName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V
    .locals 0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    .line 776
    iput p3, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
