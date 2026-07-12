.class public Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# instance fields
.field public mCallback:Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;->mCallback:Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 2

    .line 128
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>(Ljava/io/InputStream;Lcom/android/server/powerstats/PowerStatsDataStorage-IA;)V

    .line 130
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;->mCallback:Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->getData()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;->onReadDataElement([B)V

    goto :goto_0

    :cond_0
    return-void
.end method
