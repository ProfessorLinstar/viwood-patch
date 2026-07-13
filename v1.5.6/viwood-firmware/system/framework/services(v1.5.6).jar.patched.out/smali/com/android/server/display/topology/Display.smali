.class public Lcom/android/server/display/topology/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field public children:Lcom/android/server/display/topology/Children;

.field public id:Ljava/lang/String;

.field public offset:Ljava/lang/Float;

.field public position:Lcom/android/server/display/topology/Position;

.field public primary:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Display;
    .locals 4

    .line 92
    new-instance v0, Lcom/android/server/display/topology/Display;

    invoke-direct {v0}, Lcom/android/server/display/topology/Display;-><init>()V

    .line 94
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Display;->setId(Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string/jumbo v1, "primary"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Display;->setPrimary(Z)V

    .line 104
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 106
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_6

    if-eq v1, v3, :cond_6

    .line 108
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string/jumbo v2, "position"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/android/server/display/topology/Position;->fromString(Ljava/lang/String;)Lcom/android/server/display/topology/Position;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Display;->setPosition(Lcom/android/server/display/topology/Position;)V

    goto :goto_0

    .line 114
    :cond_3
    const-string/jumbo v2, "offset"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Display;->setOffset(F)V

    goto :goto_0

    .line 118
    :cond_4
    const-string v2, "children"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    invoke-static {p0}, Lcom/android/server/display/topology/Children;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Children;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Display;->setChildren(Lcom/android/server/display/topology/Children;)V

    goto :goto_0

    .line 122
    :cond_5
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_6
    if-ne v1, v3, :cond_7

    return-object v0

    .line 126
    :cond_7
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Display is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChildren()Lcom/android/server/display/topology/Children;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()F
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getPosition()Lcom/android/server/display/topology/Position;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    return-object p0
.end method

.method public getPrimary()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasChildren()Z
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasId()Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasOffset()Z
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasPosition()Z
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasPrimary()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setChildren(Lcom/android/server/display/topology/Children;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    return-void
.end method

.method public setOffset(F)V
    .locals 0

    .line 40
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    return-void
.end method

.method public setPosition(Lcom/android/server/display/topology/Position;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    return-void
.end method

.method public setPrimary(Z)V
    .locals 0

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    return-void
.end method

.method public write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasId()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_0

    .line 134
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string v0, " primary=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getPrimary()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 143
    :cond_1
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->increaseIndent()V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const-string v1, "<position>"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getPosition()Lcom/android/server/display/topology/Position;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/topology/Position;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 148
    const-string v1, "</position>\n"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasOffset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const-string v1, "<offset>"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 153
    const-string v1, "</offset>\n"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    invoke-virtual {p0}, Lcom/android/server/display/topology/Display;->getChildren()Lcom/android/server/display/topology/Children;

    move-result-object p0

    const-string v1, "children"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/topology/Children;->write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V

    .line 158
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->decreaseIndent()V

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
