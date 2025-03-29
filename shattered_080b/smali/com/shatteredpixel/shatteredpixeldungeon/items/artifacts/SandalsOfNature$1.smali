.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$1;
.super Ljava/lang/Object;
.source "SandalsOfNature.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;->seeds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "already_fed"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;->seeds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 6
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 7
    sget-object v3, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "snd_plant.mp3"

    .line 8
    invoke-virtual {v3, v5, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 9
    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    const/high16 v3, 0x40000000    # 2.0f

    .line 10
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 11
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;->seeds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    .line 12
    iget v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v6

    if-lt v3, v5, :cond_1

    .line 13
    iget-object v3, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;->seeds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 15
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    .line 16
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    if-gt v3, v6, :cond_2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "levelup"

    .line 17
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "absorb_seed"

    .line 18
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_3
    :goto_1
    return-void
.end method
