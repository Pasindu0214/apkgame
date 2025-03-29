.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$2;
.super Ljava/lang/Object;
.source "UnstableSpellbook.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 3
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    .line 4
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    .line 7
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 10
    iput-boolean v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    const/high16 v4, 0x40000000    # 2.0f

    .line 11
    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 12
    sget-object v4, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "snd_burning.mp3"

    .line 13
    invoke-virtual {v4, v6, v5, v5, v5}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 14
    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 15
    invoke-virtual {v4, v5, v7, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 16
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    .line 17
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->scrolls:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 20
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "infuse_scroll"

    .line 21
    invoke-static {v0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "unable_scroll"

    .line 22
    invoke-static {v0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 23
    :cond_2
    instance-of v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "unknown_scroll"

    .line 24
    invoke-static {v0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
