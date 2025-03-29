.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;
.super Ljava/lang/Enum;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

.field public static final enum ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

.field public static final enum ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;


# instance fields
.field public pages:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GUIDE_PAGE:I

    const/4 v2, 0x0

    const-string v3, "ADVENTURERS_GUIDE"

    invoke-direct {v0, v3, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ALCH_PAGE:I

    const/4 v3, 0x1

    const-string v4, "ALCHEMY_GUIDE"

    invoke-direct {v0, v4, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    .line 3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    .line 4
    iget-object v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Intro"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Identifying"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Examining_and_Searching"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Strength"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Food"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Levelling"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Surprise_Attacks"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Dieing"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Looting"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Magic"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Potions"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Stones"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Energy_Food"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Bombs"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Exotic_Potions"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Exotic_Scrolls"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Catalysts"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Brews_Elixirs"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Spells"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static restore(Lcom/watabou/utils/Bundle;)V
    .locals 9

    const-string v0, "documents"

    .line 1
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/watabou/utils/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 8
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v6, "Brews"

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v8, "Catalysts"

    invoke-virtual {v5, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "Brews_Elixirs"

    invoke-virtual {v5, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static store(Lcom/watabou/utils/Bundle;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5
    iget-object v9, v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 8
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "documents"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    return-object v0
.end method


# virtual methods
.method public addPage(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveNeeded:Z

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasPage(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pageBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pageTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".title"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
