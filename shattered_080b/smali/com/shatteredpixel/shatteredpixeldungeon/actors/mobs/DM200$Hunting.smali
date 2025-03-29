.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.source "DM200.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 4

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 4
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 5
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->ventCooldown:I

    const/4 v3, 0x0

    if-gtz v2, :cond_3

    const/16 v2, 0x64

    .line 6
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->distance(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    div-int/2addr v2, p1

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean p1, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz p1, :cond_2

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    return v3

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    .line 10
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->zap()V

    return p2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result v2

    div-float/2addr v0, v2

    .line 13
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 14
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->moveSprite(II)Z

    return p2

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    .line 17
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->ventCooldown:I

    if-gtz v1, :cond_7

    .line 18
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_5

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean p1, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz p1, :cond_6

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    return v3

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    .line 21
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->zap()V

    return p2

    .line 22
    :cond_7
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return p2

    .line 23
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->act(ZZ)Z

    move-result p1

    return p1
.end method
