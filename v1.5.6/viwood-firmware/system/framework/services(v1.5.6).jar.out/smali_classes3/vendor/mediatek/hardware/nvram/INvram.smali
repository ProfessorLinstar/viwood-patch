.class public interface abstract Lvendor/mediatek/hardware/nvram/INvram;
.super Ljava/lang/Object;
.source "INvram.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 630
    const-string v2, "vendor$mediatek$hardware$nvram$INvram"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/mediatek/hardware/nvram/INvram;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract readFileByName(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract writeFileByNamevec(Ljava/lang/String;I[B)B
.end method
